{BrunchApplication} = require 'helpers'
{MainRouter}        = require 'routers/main_router'
{Channel}           = require 'models/channel'

class exports.Application extends BrunchApplication
  initialize: ->

    # Setup channel
    @channel = new Channel()
    @channel.set('source', @findAndExtractSource())

    # Create the widget container
    @createEl()
    
    # Kick off router
    @loading().start()
    @router = new MainRouter()
    
window.app = new exports.Application