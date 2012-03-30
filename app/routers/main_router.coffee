{BlockView}      = require 'views/block_view'
{SingleView}     = require 'views/single_view'
{CollectionView} = require 'views/collection_view'
{Channel}        = require 'models/channel'

class exports.MainRouter extends Backbone.Router
  routes:
    ''            : 'collection'
    '/mode::mode' : 'collection'
    '/show::id'   : 'single'

  initialize: ->
    @source  = app.findAndExtractSource()
    @channel = new Channel()

  collection: (mode = 'grid') ->
    # Save the current view mode in the channel
    @channel.set {'mode', mode}

    $.when(@channel.maybeLoad @source).then =>
      @collectionView = new CollectionView
        model       : @channel
        collection  : @channel.blocks
        mode        : mode
      $(app.el())
        .attr('class', 'collection')
        .html @collectionView.render().el

  single: (id) ->
    $.when(@channel.maybeLoad @source).then =>
      @singleView = new SingleView
        model       : @channel.blocks.get id
        collection  : @channel.blocks
        channel     : @channel
      $(app.el())
        .attr('class', 'single')
        .html @singleView.render().el