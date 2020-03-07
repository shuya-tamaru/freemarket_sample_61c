$(function() {
  $('.item-box__details__image__list li img').hover(function(){
    $('.item-box__details__image__top img').attr('src', $(this).attr('src'));
  });
});
