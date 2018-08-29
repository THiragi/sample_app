$(function(){
  
  $('.reply_button').on('click', function(){
    $("#reply_form" + $(this).data("id")).slideToggle();
  });

});
