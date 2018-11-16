$(function(){
  
  $('.reply_button').on('click', function(){
    $("#reply_form" + $(this).data("id")).slideToggle();
  });

/*  $('.likes_buttons_<%= micropost.id %>').on('click', function(){
    $.ajax({
        url:'',
        type:'',
        data:{
          
        }
    })
    .done();
    .fail();
  });
*/
});
