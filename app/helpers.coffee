class exports.BrunchApplication
  constructor: ->
    $ =>
      @initialize this
      Backbone.history.start()

  initialize: ->
    null

  el: -> "#arena"

  loading: ->
    start: -> $(app.el()).addClass    'loading'
    stop:  -> $(app.el()).removeClass 'loading'