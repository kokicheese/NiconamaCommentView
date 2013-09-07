

class Frame
  constructor: ->
    @frameDOM = $ document.getElementById(@documentID)
    
    
    $('.close').click @close

  documentID: 'windowFrame'
    
  
  close: ->
    chrome.app.window.current().close()
