import "core-js";
import "regenerator-runtime/runtime";
import 'bootstrap';
import './stylesheets/application';
import '/app/assets/stylesheets';

import 'jquery';
// import Rails from 'rails-ujs';
// import Turbolinks from 'turbolinks';

require('core-js');
// require("@rails/ujs").start();
// require("turbolinks").start();
// require("@rails/activestorage").start();
//
// Rails.start();
// Turbolinks.start();

require("channels");

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
