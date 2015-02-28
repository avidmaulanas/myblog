# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# openPopup = (link) ->
#   link.hide()
#   window.open link.href, 'Report Abuse', 'toolbar=no,location=no,menubar=no,scrollbars=yes,resizable=no'
#   false
$('a[data-popup]').on 'click', (e) ->
  window.open $(this).attr('href'), 'Popup', 'height=600, width=600'
  e.preventDefault()
  return