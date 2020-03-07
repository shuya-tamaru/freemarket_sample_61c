$(window).on('load', ()=> {
  const buildFileField = (num)=> {
    const html = `
                  <input class="image-box__images__input"
                  id="item_images_attributes_${num}_image" type="file"
                  name="item[images_attributes][${num}][image]">
                  `;
    return html;
  }

  const buildImg = (index, url)=> {
    const html2 = `
    <div class= "image-box__images__box">
      <img class= "image-box__images__box__image${index}" img src="${url}" width="110px" height="120px"></img>
      <div class= "image-box__images__box__delete" width="110px" height="20px">削除</div>
    </div>
      `;
    return html2;
  }

  let fileIndex = [1,2,3,4,5,6,7,8,9,10];

  lastIndex = $('.contents__item__upload__image__btn__area__field:last').data('index');
  fileIndex.splice(0, lastIndex);

  $(document).on("click", ".image-box__images__box__delete", function(event) {
    event.preventDefault();
    const num = $(".image-box__images__box").length;
    $(this).closest(".image-box__images__box").remove();
    if (num == 9){
      $('#image-box').prepend(buildFileField(9))
    }
  });

  $('.hidden-destroy').hide();

  $('#image-box').on('change', function(e) {
    const targetIndex = $(this).parent().data('index');
    const num = $(".image-box__images__box").length;

    const file = e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);
    if (num != 10){
      console.log(num);
      $('.image-box__images').before(buildImg(num, blobUrl));

      $('#image-box').prepend(buildFileField(fileIndex[0]));
      fileIndex.shift();

      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);

      $('.text').remove();
      } else {
        console.log("readread");
        $('#item_images_attributes_10_image').remove();
      }
  });

});
