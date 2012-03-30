class exports.BrunchApplication
  constructor: ->
    $ =>
      @initialize this
      Backbone.history.start()

  initialize: ->
    null

  el: -> "#arena_#{app.channel.get('source')}"

  createEl: ->
    ($ document.getElementsByTagName 'arena:channel-widget').
      replaceWith "<div data-source='#{app.channel.get('source')}' id='#{@el().replace('#', '')}' class='arena_channel-widget_container'></div>"

  loading: ->
    start: -> ($ app.el()).addClass    'loading'
    stop:  -> ($ app.el()).removeClass 'loading'

  findAndExtractSource: ->
    # Occurs once on initialize
    ($ document.getElementsByTagName('arena:channel-widget')).attr 'source'