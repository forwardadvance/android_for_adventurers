jsPlumb.ready(function() {
  jsPlumb.Defaults.Container = $("nav.map");
  if (pageVars.mapDraggable === true) {
    var updateDraggable = function(el, t) {
      var map = jsPlumb.Defaults.Container;
      var update_path = el.attr('data-update-path');
      var position = el.position();
      var data = {
        _method:'PUT'
      }
      data[t + "[x_pos]"] = position.left;
      data[t + "[y_pos]"] = position.top;
      $.ajax({
        type: "POST",
        url: update_path,
        data: data
      });
    }
    jsPlumb.draggable($("nav.map li"), {
      stop: function(e) {
        updateDraggable($(e.target), 'exercise');
      }
    });
    jsPlumb.draggable($("nav.map section"), {
      stop: function(e) {
        updateDraggable($(e.target), 'section');
      }
    })
  }

  var connectorStyle = {
    connector:"StateMachine",
    paintStyle:{lineWidth:2,strokeStyle:"#888"},
    endpoint:"Blank",
    anchor:"Continuous",
    overlays:[ ["PlainArrow", {location:1, width:15, length:12} ]]
  };
  $.each(pageVars.connections, function(key,val) {
    jsPlumb.connect({ source:$(val.source), target:$(val.target)}, connectorStyle);
  });

});