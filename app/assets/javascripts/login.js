$(document).ready(function(){
  $("#photographer-form").hide();
  $("#photographer-form-button").on('click', function(){
    $(this).hide();
    $('#photographer-form').slideDown('slow').trigger('autosize.resize');
  });
  
  $("#user-form").hide();
  $("#user-form-button").on('click', function(){
    $(this).hide();
    $('#user-form').slideDown('slow').trigger('autosize.resize');
  });
});

