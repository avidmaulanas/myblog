// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require turbolinks
//= require jquery.jcrop
//= require jquery.turbolinks
//= require jquery_ujs
//= require social-share-button
//= require bootstrap
//= require nprogress
//= require nprogress-turbolinks
//= require parsleyjs
//= require bootstrap-notify
//= require bootbox
//= require cropper
//= require_tree .

$(function () {
  $('[data-toggle="tooltip"]').tooltip({
    container: 'body'
  })
})
