@notif = (message, type) ->
  $.notify {
    message: message
  },
    type: type
    showProgressbar: false
    delay: 3000
    template:
      '<div data-notify="container" class="col-xs-11 col-sm-3 alert alert-{0}" role="alert">' +
        '<button type="button" aria-hidden="true" class="close" data-notify="dismiss">×</button>' +
        '<span data-notify="icon"></span> ' +
        '<span data-notify="title">{1}</span> ' +
        '<span data-notify="message">{2}</span>' +
      '</div>'

$ ->
  message = $('.notification').data('message')
  notif message, $('.notification').data('type') if message?

