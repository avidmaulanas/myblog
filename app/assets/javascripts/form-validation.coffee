@parsley_form = ->
  form = $('form[role="form"]')
  if form.length > 0
    form.parsley
      successClass: "has-success"
      errorClass: "has-error"
      classHandler: (el) ->
        el.$element.closest(".form-group")
      errorsContainer: (el) ->
        el.$element.closest(".form-group")
      errorsWrapper: "<span class='help-block'></span>"
      errorTemplate: "<span></span>"
  return

# when our document is ready, call our ready function
$(document).ready parsley_form
# if using turbolinks, listen to the page:load event and fire our ready function
$(document).on 'page:load', parsley_form
