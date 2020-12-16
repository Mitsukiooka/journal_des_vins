$(function() {
  $(".btn").mouseover(function() {
    $(this).addClass('active');
  })
  $(".btn").mouseout(function() {
    $(this).removeClass('active');
  })
});