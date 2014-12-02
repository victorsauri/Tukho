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
//= require turbolinks
//= require_tree .


var opts = {
  lines: 12, // The number of lines to draw
  angle: 0.15, // The length of each line
  lineWidth: 0.44, // The line thickness
  pointer: {
    length: 0.9, // The radius of the inner circle
    strokeWidth: 0.035, // The rotation offset
    color: '#000000' // Fill color
  },
  limitMax: 'false',   // If true, the pointer will not go past the end of the gauge
  percentColors: [[0.0, "#a9d70b" ],[0.49999, "#a9d70b" ],[0.50, "#f9c802"],[0.79999, "#f9c802"],[0.825, "#ff0000"], [1.0, "#ff0000"]],
  strokeColor: '#E0E0E0',   // to see which ones work best for you
  generateGradient: true
};
var target = document.getElementsByTagName('Gauge'); // your canvas element
var gauge = new Gauge(target).setOptions(opts); // create sexy gauge!
gauge.maxValue = document.getElementsByTagName('count_all').value; // set max gauge value
gauge.animationSpeed = 32; // set animation speed (32 is default value)
gauge.set(5); // set actual value