window.onload = function() {
  'use strict';
  var opts = {
    lines: 12,
    angle: 0.15,
    lineWidth: 0.44,
    pointer: {
      length: 0.9,
      strokeWidth: 0.035,
      color: 'gold'
    },
    limitMax: 'false',
    colorStart: '#097B09',
    strokeColor: '#AC3518',
    generateGradient: true
  };

  var events = document.getElementsByClassName('list_event');
  for (var i = 0; i < events.length; i++) {
    var total = parseFloat(events[i].getElementsByClassName('count_all')[0].innerHTML);
    var green = parseFloat(events[i].getElementsByClassName('green_count')[0].innerHTML);
    var target = events[i].getElementsByClassName('Gauge')[0];
    var gauge = new Gauge(target).setOptions(opts);
    gauge.maxValue = total
    gauge.animationSpeed = 72;
    gauge.set(green);
  };
};