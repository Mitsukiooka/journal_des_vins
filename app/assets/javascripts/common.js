$(function() {
  $(".btn").mouseover(function() {
    console.log('aaaa')
    $(this).addClass('active');
  })
  $(".btn").mouseout(function() {
    $(this).removeClass('active');
  })
});