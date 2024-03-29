class exports.BlockView extends Backbone.View
  className: 'arena_block'

  initialize: ->
    @template = require "./templates/single/#{@options.mode}"
  
  render: ->
    @$el.html @template
      mode    : @options.mode
      channel : @options.channel.toJSON()
      block   : @model.toJSON()
    
    return this