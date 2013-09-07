###
#
# author: @koki_cheese
#
###

class Background
  constructor: ->

  user: {
    name: null
    ticket: null
    }
    
  onLauncher: ->
    if @windowInstance == null
      chrome.app.window.create @html, @windowConfing, @windowCreate.bind(@)
    else
      console.log @windowInstance
      @windowInstance.focus()
      

  html: 'index.html'

  windowInstance: null
  
  windowConfing: {
    frame: 'none'
    minWidth: 400
    minHeight: 400
    width: 400
    height: 400
    }

  windowCreate: (appWindow)->
    @windowInstance = appWindow
    console.log 'window opened', appWindow
    appWindow.onClosed.addListener @windowClose.bind(@)
  
  windowClose: ->
    @windowInstance = null

  login: (id, pass)->
    

bg = new Background

chrome.app.runtime.onLaunched.addListener bg.onLauncher.bind(bg)

window.background = bg
