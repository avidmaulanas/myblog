myCustomConfirmBox = (message, callback) ->
  bootbox.dialog
    message: message
    title: 'Confirm:'
    buttons:
      success:
        label: 'Yes'
        className: 'btn-success btn-round-lg'
        callback: ->
          if typeof callback == 'function'
            return callback()
          return
      danger:
        label: 'No'
        className: 'btn-danger btn-round-lg'
        callback: ->
          true
  return

$.rails.allowAction = (element) ->
  answer = undefined
  callback = undefined
  message = undefined
  message = element.data('confirm')
  if !message
    return true
  answer = false
  callback = undefined
  if $.rails.fire(element, 'confirm')
    myCustomConfirmBox message, ->
      oldAllowAction = undefined
      callback = $.rails.fire(element, 'confirm:complete', [ answer ])
      if callback
        oldAllowAction = $.rails.allowAction

        $.rails.allowAction = ->
          true

        element.get(0).click()
        return $.rails.allowAction = oldAllowAction
      return
  false
