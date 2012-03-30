{BlockView} = require 'views/block_view'

class exports.SingleView extends BlockView
  id: 'single'
  className: 'block'

  initialize: ->
    # Override the block_view template
    @template = require './templates/single/list'

  render: (id) ->
    @$el.html @template
      channel : @options.channel.toJSON()
      block   : @model.toJSON()
      blocks  : @collection.toJSON()
      next    : @collection.next(@model)
      prev    : @collection.prev(@model)
    
    return this
