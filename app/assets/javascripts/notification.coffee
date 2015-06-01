@notif = (message, type) ->
  $.notify {
    message: message
  },
    type: type
    showProgressbar: false
    delay: 3000

$ ->
  message = $('.notification').data('message')
  notif message, $('.notification').data('type') if message?

