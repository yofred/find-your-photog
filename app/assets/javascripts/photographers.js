$(document).ready(function(){
  
  $('#view_all').hide();
  $('#view_less_button').hide();
  
  $('#view_all_button').on('click', function(){
    $('#view_4').hide();
    $('#view_all_button').hide();
    $('#view_less_button').show();
    $('#view_all').hide();
    $('#view_all').slideDown('slow');
  });
  
  $('#view_less_button').on('click', function(){
    $('#view_all').hide();
    $('#view_all_button').show();
    $('#view_less_button').hide();
    $('#view_4').hide();
    $('#view_4').slideDown('slow');
  });
  
  
});