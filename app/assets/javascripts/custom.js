console.log(9);
$(function(){
  $('.reply_button').on('click', function(){
      console.log(1);
    $("#reply_form" + $(this).data("id")).slideToggle();
  });
});
