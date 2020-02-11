$(function() {
  $('.myinfomations__tabs__label li').click(function() {
    var index = $('.myinfomations__tabs__label li').index(this);
    $('.myinfomations__tabs__label li').removeClass('active');
    $(this).addClass('active');
    $('.myinfomations__tabs__contents ul').removeClass('view').eq(index).addClass('view');
  });
});

$(function() {
  $('.myinfomations__trade__label li').click(function() {
    var index = $('.myinfomations__trade__label li').index(this);
    $('.myinfomations__trade__label li').removeClass('active');
    $(this).addClass('active');
    $('.myinfomations__trade__contents ul').removeClass('view').eq(index).addClass('view');
  });
});