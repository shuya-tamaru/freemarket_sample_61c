$(document).on('turbolinks:load', function(){
  var slider = ".item-box__details__image__top li img";
  var thumbnailItem = ".item-box__details__image__list li img";

  $(thumbnailItem).each(function(){
    var index = $(thumbnailItem).index(this);
    $(this).attr("data-index",index);
   });

   $(slider).slick({
    arrows: false,
    infinite: false
  });

  $(thumbnailItem).on('click',function(){
    var index = $(this).attr("data-index");
    $(slider).slick("slickGoTo",index);
  });


  // $(function() {
  //   $('.item-box__details__image__list li img').mouseover(function(){
  //     $('.item-box__details__image__top img').attr('src', $(this).attr('src'));
  //   });
});
