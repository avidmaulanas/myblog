setPreviewImage = (file) ->
  reader = new FileReader
  newImage = new Image

  reader.onload = (evt) ->
    newImage.src = evt.target.result
    # set preview source
    newImage.width = 500
    # set preview width
    return

  reader.readAsDataURL file[0]
  $('.preview-container').html newImage
  return

$(document).bind "page:load page:change", ->
  $('input.avatar').on 'change', (evt) ->
    evt.preventDefault()
    files = evt.target.files
    setPreviewImage files

    $('#crop-modal').modal 'show'
    image = $('.preview-container > img')
    $('#crop-modal').on('shown.bs.modal', ->
      $('.img-avatar').hide()
      image.cropper
        aspectRatio: 1
        autoCropArea: 1
        crop: (data) ->
          $('#user_avatar_crop_x').val Math.round(data.x)
          $('#user_avatar_crop_y').val Math.round(data.y)
          $('#user_avatar_crop_h').val Math.round(data.height)
          $('#user_avatar_crop_w').val Math.round(data.width)
          return
      return
    ).on 'hidden.bs.modal', ->
      croppedCanvas = image.cropper('getCroppedCanvas')
      dataURL = croppedCanvas.toDataURL()
      img = new Image
      img.src = dataURL
      img.width = 160
      $('.img-preview').hide().html(img).fadeIn(1000)
      $('.img-preview > img').addClass('img-circle')
      return

  return
