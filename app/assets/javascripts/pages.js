// $(document).ready( function(){
//   When $("#findyourphotog_button") is clicked, do this: $("#findyourphotog").hide() (or do this: $("#findyourphotog").show())
//   
//   on click $("#findyourphotog_button")
//     if $("#findyourphotog") is visible
//       hide it
//     else
//       show it
//   
// });

// $(document).ready(function(){
//   $("#findyourphotog_button").on('click', function() {
//     if($("#findyourphotog").is(':hidden')) {
//       $("#findyourphotog").show();
//     } else {
//       $("#findyourphotog").hide();
//       $("#f00px").show();
//     }
//   });
// });

// $(document).ready(function(){
//   $("#findyourphotog_button").on('click', function() {
//     if($("#f00px").is(':visible')) {
//       $("#f00px").hide();
//     } else {
//       $("#findyourphotog").show();
//     }
//   });
// });

// $(document).ready(function(){
//   $("#findyourphotog_button").on('click', function(){
//     if ($("#findyourphotog").css("visibility") == "hidden") {
//       $("#findyourphotog").show();
//     } else {
//       $("#findyourphotog").hide();
//     }
//   });
// });

$(document).ready(function(){
  $("#findyourphotog_button").click(function(){
    $("#f00px").hide();
    $("#fingyourphotog").show();
  });
  $("#f00px_button").click(function(){
    $("#findyourphotog").hide();
    $("#f00px").show();
  });
});


// $(".item").each(function() {
//     if ($(this).css("visibility") == "hidden") {
//         // handle non visible state
//     } else {
//         // handle visible state
//     }
// });

// $( "p" ).on( "click", function() {
//   alert( $( this ).text() );
// });

// $(document).ready(function(){  
//   
//   if($("#findyourphotog_button").on('click', function()){
//     $("#f00px").hide();
//   } else {
//     $("#f00px").show();
//   }
// );
//   
//   $("#f00px_button").on('click', function(){
//     if($("#findyourphotog").is(':hidden')) {
//       $("#findyourphotog").hide();
//     } else {
//       $("#findyourphotog").show();
//     } 
//   });
//   
//   $("#findyourphotog_button").on('click', function(){
//     if($("#f00px").is(':hidden')) {
//       $("#f00px").hide();
//     } else {
//       $("#f00px").show();
//     }
//   }); 
// });

// $(document).ready(function(){  
//   $("#f00px_button").on('click', function(){
//     if($("#findyourphotog").show()) {
//       $("#findyourphotog").hide();
//     } else {
//       $("#findyourphotog").show();
//     } 
//   });
//   
//   $("#findyourphotog_button").on('click', function(){
//     if($("#f00px").show()) {
//       $("#f00px").hide();
//     } else {
//       $("#f00px").show();
//     }
//   }); 
// });

// $(document).ready(function(){  
//   $("#findyourphotog_button").on('click', function(){
//     if($("#findyourphotog").is(':hidden')) {
//       $("#findyourphotog").show();
//     } else {
//       $("#findyourphotog").hide();
//     }
//     
//   });
// });







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

// $(document).ready(function(){
//   $( "#findyourphotog_button" ).on('click', function() {
//     if($("#f00px").is(':visible'));
//     $('#findyourphotog').fadeToggle('fast');
//   });
// });


// $(document).ready(function(){
//   $("#findyourphotog_button").on("click", function(){
//     $("#f00px").hide();
//   });
// })


// $('#findyourphotog').hide().after('<%= j render ("f00px") %>');

// $(document).ready(function(){  
//   $("#f00px_button").on('click', function(){
//     if($("#findyourphotog").show()) {
//       $("#findyourphotog").hide();
//     } else {
//       $("#findyourphotog").show();
//     } 
//   });
// });

// $("#findyourphotog").hide()

// $(document).ready(function(){
//   $('button').on('click', function(){
//     var message = $("<span>Call 1-555-jquery-air to book this tour</span>");
//     $(this).closest(".tour").append(message);
//     $(this).remove();
//   });
// });
// 
// $(document).ready(function(e) {
// $('.divone').click(function() {
//     if($(this).hasClass("clicked")) {
//         $(this).text("removing click");
//         $(this).removeClass("clicked");
//     } else {
//         $(this).text("adding click");
//         $(this).addClass("clicked");
//     }
// }); 
// });

// $("#findyourphotog").hide()