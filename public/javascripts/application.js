// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery.ajaxSetup({
    'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
    });

jQuery.fn.submitWithAjax = function() {
  this.submit(function() {
      $.post(this.action, 
             $(this).serializeArray(), 
             function(data) {alert(data);},
             "script");
      return false;
      });
  return this;
};

$(function(){
    // customize the datepicker
    $.datepicker.setDefaults($.datepicker.regional['zh-CN']);
    $('#assignment_assign_date').datepicker({ showOn: 'both',
      changeMonth: true,
      changeYear:  true,
      buttonImage: 'images/calendar.gif',
      buttonImageOnly: true
      });
    $('#side').accordion({header: "h3"});

    //
    $("table tr:nth-child(even)").addClass("even");

    $("#new_section").submitWithAjax();

    // make the section-list sortable and save the list's state
    $("#section-list").sortable({
      update: function(event, ui){
        priorities = [];
       $("#section-list > div").each(function(n) {
         section_id = this.id.split("_")[1];
         //result.merge(section_id : n + 1);
         priorities[n] = section_id;
         //TODO collect and batch update the data with ajax
        });
       $.post("/sections/update", {"sequence[]" : priorities});
      } //end the update block
    });
});
