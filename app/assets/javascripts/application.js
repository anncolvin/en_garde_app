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
//= require jquery_ujs
//= require foundation
//= require_tree .
//= require highcharts
//= require highcharts/highcharts-more

//= require fencers

$(function(){ $(document).foundation(); });

$(document).ready(function() {
  $("#point_reason_category").on("change", function(event) {
    event.preventDefault();

    var reasonsByCategory = {
      distance: ["Too Close", "Too Far"],
      timing: ["Hesitated", "Reaction Time"],
      technique:["Did Not Parry","Did Not Attack","Failed Attack","Lunge","Advance","Retreat","Fleche","Unsuccessful Parry","Stance Exposed Target","Riposte","Disengage"]
    };

    var selectedCategory = $(this.selectedOptions).val().toLowerCase();
    var selectedReasonsList = reasonsByCategory[selectedCategory];
    var reasonDropdown = $("#point_reason");
    var dropdownHeader = $('<option>', { value: "Reason", text: "Reason" });

    reasonDropdown.empty();
    reasonDropdown.append(dropdownHeader);

    $.each(selectedReasonsList, function(i, item) {
      reasonDropdown.append($('<option>', { value: item, text: item }));
    });
  });
});
