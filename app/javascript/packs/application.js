import "core-js";
import 'jquery';
import "regenerator-runtime/runtime";
import 'bootstrap';
import '../stylesheets/style';

//= require rails-ujs
//= require activestorage
//= require_tree .

// import Rails from 'rails-ujs';
// Rails.start();
//= require jquery
//= require jquery_ujs
//= require bootstrap

$(document).ready(function () {

  $('.first-button').on('click', function () {

    $('.animated-icon1').toggleClass('open');
  });
  $('.second-button').on('click', function () {

    $('.animated-icon2').toggleClass('open');
  });
  $('.third-button').on('click', function () {

    $('.animated-icon3').toggleClass('open');
  });
});


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
