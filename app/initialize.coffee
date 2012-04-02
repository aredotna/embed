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

    $("head").append("<link>");
    css = $("head").children(":last");
    css.attr({
      rel:  "stylesheet",
      type: "text/css",
      href: "stylesheets/app.css"
    });   
    
window.app = new exports.Application