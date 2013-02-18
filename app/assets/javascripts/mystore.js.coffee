STORE =
  common:
    init: =>
      # new appointmentCalendar
      # @myPusherObject = new myPusher
      console.log("common js ")
     
 
  home: 
    init: => 
      # console.log("Home page controller")

    index: =>
      
      # new window.tcl_HomepageController

  appointments: #TODO: This should be a controller name
    show: =>
      # new chatSession
      # appointmentId =  $('.page-header').data("appointmentid")
      # console.log @myPusherObject
      # channel = @myPusherObject.pusher.subscribe('private-' + appointmentId)
      

      # channel.bind "subscription_error", (status) ->
      #   $("div#status").text "Pusher subscription_error"

      # channel.bind 'chat', (data) ->
      #   htmlString = "<li>"
      #   htmlString += "<span class='message-time'>#{ data.created_at }</span>"
      #   htmlString += "<span class='message-sender'>#{ data.sender }</span>"
      #   htmlString += "<span class='message-content'>#{data.message }</span>"
      #   htmlString += "</li>"
      #   $('.chat-messages').prepend(htmlString)
      #   console.log("New chat: ")
      #   console.log(data)

  registrations:
    init: =>
      # new window.tcl_Registration

UTIL =
  exec: (controller, action) ->
    ns = STORE
    action = (if (action is `undefined`) then "init" else action)
    ns[controller][action]()  if controller isnt "" and ns[controller] and typeof ns[controller][action] is "function"

  init: ->

    body = document.body
    controller = body.getAttribute("data-controller")
    action = body.getAttribute("data-action")
    UTIL.exec "common"
    UTIL.exec controller
    UTIL.exec controller, action

$(document).ready UTIL.init