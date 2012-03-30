{BrunchApplication} = require 'helpers'
{MainRouter}        = require 'routers/main_router'

class exports.Application extends BrunchApplication
  initialize: ->
    @createEl()
    @loading().start()
    @router = new MainRouter()
    
window.app = new exports.Application