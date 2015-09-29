@notif = (message, type) ->
  $.notify {
    message: message
  },
    element: 'body'
    type: type
    showProgressbar: true
    delay: 5000
    offset: 65
    placement:
      from: "top"
      align: "center"
    template:
      '<div data-notify="container" class="notif-alert col-xs-11 col-sm-12 alert alert-{0}" role="alert">' +
        '<button type="button" aria-hidden="true" class="close" data-notify="dismiss">×</button>' +
        '<span data-notify="icon"></span> ' +
        '<span data-notify="title">{1}</span> ' +
        '<span data-notify="message">{2}</span>' +
      '</div>'

$ ->
  message = $('.notification').data('message')
  notif message, $('.notification').data('type') if message?
