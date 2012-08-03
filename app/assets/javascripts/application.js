// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$(document).ready(function() {
	$('#info_form_other1').parent().hide(); //hide field on start
	$('#info_form_industry').change(function() {
	 var $index = $('#info_form_industry').index(this);
	 if($('#info_form_industry').val() != 'Other') { //if this value is NOT selected
	 $('#info_form_other1').parent().hide(); //this field is hidden
	 } 
	 else {
	 $('#info_form_other1').parent().show();//else it is shown
	 }
        });
        
        $('#hostingpref').hide();
        $('#info_form_preferredsys_web_based').change(function() {
         var $index = $('#info_form_preferredsys_web_based').index(this);
            if($('#info_form_preferredsys_web_based').val() == "Web based" ) { 
         $('#hostingpref').show(); 
         } 
         else  {
         $('#hostingpref').hide();
         }
         });
        
        $('#budgetrange').hide();
        $('#prefbudget').hide(); 
       
           $('input[type=radio]').change(function() {
             $('#budgetrange').toggle($(this).val() == 'Yes');
             $('#prefbudget').toggle($(this).val() == 'No');
           });

 });
