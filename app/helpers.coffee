class exports.BrunchApplication
  constructor: ->
    $ =>
      @initialize this
      Backbone.history.start()

  initialize: ->
    null

  el: ->
    "#arena_#{@findAndExtractSource()}"

  createEl: ->
    $(document.getElementsByTagName('arena:channel-widget')).html
      "<div id='#{@el().replace('#', '')}'></div>"

  loading: ->
    start: -> $(app.el()).addClass    'loading'
    stop:  -> $(app.el()).removeClass 'loading'

  findAndExtractSource: ->
    $(document.getElementsByTagName('arena:channel-widget'))
      .attr('source')