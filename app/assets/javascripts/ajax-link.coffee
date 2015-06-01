NProgress.configure
  showSpinner: false
  ease: 'ease'
  speed: 500

$(document).on 'click', "a[data-remote='true']", -> NProgress.start()
$(document).on "page:fetch", -> NProgress.start()
$(document).on "page:receive", -> NProgress.done()
