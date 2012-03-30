class exports.BrunchApplication
  constructor: ->
    $ =>
      @initialize this
      Backbone.history.start()

  initialize: ->
    null

  el: -> "#arena"

  createEl: ->
    $('body').append("<div id='#{@el().replace('#', '')}'></div>")

  loading: ->
    start: -> $(app.el()).addClass    'loading'
    stop:  -> $(app.el()).removeClass 'loading'