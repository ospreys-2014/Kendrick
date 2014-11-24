// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
$(document).ready(function() {
  // toggles the artist sub form
  $( '#check-box' ).click(function(event){
    $('.artist-form').toggle('slow');
  })
  // toggles signup and login forms
  $('#signup-link').click(function(event){
    event.preventDefault();
    $('#login-partial').hide();
    $('#signup-partial').fadeIn('slow');
  })
  $('#signin-link').click(function(event){
    event.preventDefault();
    $('#signup-partial').hide();
    $('#login-partial').fadeIn('slow');
  })
  // $("form[data-remote=true]").on("ajax:success",function(e){
  //   var listItem = $(e.target).closest("li");
  //   listItem.remove();
  // })
});
