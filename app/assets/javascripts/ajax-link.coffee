NProgress.configure
  showSpinner: false
  ease: 'ease'
  speed: 500

$("a[data-remote='true']").on 'click', -> NProgress.start()
