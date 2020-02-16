$(function() {
  $('.tabs__label li').click(function() {
    var index = $('.tabs__label li').index(this);
    $('.tabs__label li').removeClass('active');
    $(this).addClass('active');
    $('.tab ul').removeClass('view').eq(index).addClass('view');
  });
});

$(function() {
  $('.trades__label li').click(function() {
    var index = $('.trades__label li').index(this);
    $('.trades__label li').removeClass('active');
    $(this).addClass('active');
    $('.trade ul').removeClass('view').eq(index).addClass('view');
  });
});