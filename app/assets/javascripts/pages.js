// $(document).ready(function(){  
//   $("#f00px_button").on('click', function(){
//     $("#findyourphotog").hide();
//     $("#f00px").show();
//   });
//   
//   $("#findyourphotog_button").on('click', function(){
//     $("#f00px").hide();
//     $("#findyourphotog").show();
//   }); 
// });

$(document).ready(function(){  
  $("#f00px_button").on('click', function(){
    $("#findyourphotog").hide();
    $("#f00px").hide();
    $("#f00px").slideDown('slow');
  });
  
  $("#findyourphotog_button").on('click', function(){
    $("#f00px").hide();
    $("#findyourphotog").hide();
    $("#findyourphotog").slideDown('slow');
  }); 
});