// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
// require turbolinks
//= require_tree .

function l(t) {
  console.log(t);
}

$(document).ready(function(){
  $("[data-editable]").editable();
  $('.bed').droppable({
    drop: function( event, ui ) {
      l("employee " + $(ui.draggable.context).attr('data-employee-id') + " fullfilled " + $(this).attr('data-bed-id'));

      employee_id = $(ui.draggable.context).attr('data-employee-id');
      bed_id = $(this).attr('data-bed-id');
      $.ajax({
        type: "POST",
        url: "/fullfillments",
        context: this,
        contentType: "application/json; charset=utf-8",
        data: '{"fullfillment":{"employee_id":"'+employee_id+'","bed_id":"'+bed_id+'"}}',
        // dataType: 'html',
      }).done(function(data) {
        l(data);
        location.reload();
      });

    }
  });
  $('.employee').draggable({
    helper: "clone",
  });
});
