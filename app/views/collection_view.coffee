{BlockView}     = require 'views/block_view'

class exports.CollectionView extends Backbone.View
  id: 'arena_collection'

  initialize: ->
    @template = require "./templates/collection/#{@options.mode}"

  addAll: ->
    @collection.each @addOne
    
  addOne: (block) =>
    view = new BlockView
      mode        : @options.mode
      model       : block
      collection  : @model.blocks
      channel     : @model

    @$('#arena_blocks').append view.render().el

  render: ->
    console.log(@model)
    @$el.html @template
      channel : @model.toJSON()
      blocks  : @collection.toJSON()

    @addAll()

    return this
