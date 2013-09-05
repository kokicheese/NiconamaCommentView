###
#
# author: @koki_cheese
#
###

class Background
  constructor: ->

  onLauncher: ->

bg = new Background

chrome.app.runtime.onLaunched.addListener bg.onLauncher

window.background = bg
