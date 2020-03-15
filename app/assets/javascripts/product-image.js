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
      <div class= "image-box__images__box__delete" id="image-box__images__box__delete" width="110px" height="20px">削除</div>
    </div>
      `;
    return html2;
  }

  const buildFileField_edit = (id)=> {

    const html3 = `
                  <input class="image-box__images__input"
                  id="item_images_attributes_${id}_image" type="file"
                  name="item[images_attributes][${id}][image]">
                  `;
    return html3;
  }

  const buildImg_edit = (index, url)=> {
    const html4 = `
    <div class= "image-box__images__box">
      <img class= "image-box__images__box__image${index}" img src="${url}" width="110px" height="120px"></img>
      <div class= "image-box__images__box__delete__edit" id="image-box__images__box__delete__${index}" width="110px" height="20px">削除</div>
    </div>
      `;
    return html4;
  }


  let fileIndex = [1,2,3,4,5,6,7,8,9,10];

  lastIndex = $('.contents__item__upload__image__btn__area__field:last').data('index');
  fileIndex.splice(0, lastIndex);


  $('.hidden-destroy').hide();
  var  nowurl   = location.href;

  if(nowurl.match(/new/)){

    // 消去する処理
    $(document).on("click", ".image-box__images__box__delete", function(event) {
      event.preventDefault();
      const num = $(".image-box__images__box").length;
      const deleteId = $(this).prev().attr('class').replace(/[^0-9]/g, '');
      const deleteform =  ("#item_images_attributes_"+deleteId+"_image")
      const label_id = $(".label-box").attr('id').replace(/[^0-9]/g, '');
      $(this).closest(".image-box__images__box").remove();

      $(deleteform).remove();
      if (num == 10){
        $('.label-box').attr({id: `label-box--${(Number(label_id))}`,for: `item_images_attributes_${(Number(label_id))}_image`});
        $('#image-box').prepend(buildFileField(Number(label_id)))
      }
    });

    // 新規のものを追加する処理
    $('#image-box').on('change', function(e) {
      const targetIndex = $(this).parent().data('index');
      const num = $(".image-box__images__box").length;
      const file = e.target.files[0];
      const blobUrl = window.URL.createObjectURL(file);
      const label_id = $(".label-box").attr('id').replace(/[^0-9]/g, '');

      if (num != 9){
        $('.label-box').attr({id: `label-box--${(Number(label_id) + 1)}`,for: `item_images_attributes_${(Number(label_id) + 1)}_image`});
        $('.image-box__images').before(buildImg(label_id, blobUrl));
        $('#image-box').prepend(buildFileField(Number(label_id)+1));
        $('.text').remove();
        } else {
          $('.image-box__images').before(buildImg(Number(label_id), blobUrl));
          $('.label-box').attr({id: `label-box--${(Number(label_id) + 1)}`,for: `item_images_attributes_${(Number(label_id) + 1)}_image`});
        }
    });
  }


  if(nowurl.match(/edit/)){

    // 新規のものを追加する処理
    $('.label-box').on('change', function(e) {
      const targetIndex = $(this).parent().data('index');
      const num = $(".image-box__images__box").length;
      const file = e.target.files[0];
      const blobUrl = window.URL.createObjectURL(file);

      var id = $(this).attr('id').replace(/[^0-9]/g, '');
      $('.label-box').attr({id: `label-box--${Number(id)+1}`,for: `item_images_attributes_${Number(id)+1}_image`});

      if (num != 9){
        $('.image-box__images').append(buildImg_edit(id, blobUrl));
        $('.image-box__images').after(buildFileField_edit(Number(id)+1));
        $('.text').remove();
        } else {
          $('.image-box__images').append(buildImg_edit(id, blobUrl));
        }
    });

    // 既存のものを消去する処理
    $('#image-box').on('click', '.image-box__images__box__delete', function(e) {

      event.preventDefault();
      const targetIndex = $(this).data('index')
      const hiddenCheck = $(`input[data-index="${targetIndex}"].hidden-destroy`); 
      const num = $(".image-box__images__box").length;
      if (hiddenCheck) hiddenCheck.prop('checked', true);
        $(this).parent().remove();
        $(`img[data-index="${targetIndex}"]`).remove();

      if (num == 10){
        const label_id = $(".label-box").attr('id').replace(/[^0-9]/g, '');
        $('.image-box__images').after(buildFileField_edit(Number(label_id)));
      }

    });

    // 新規のものを消去する処理
    $('#image-box').on('click', '.image-box__images__box__delete__edit', function(e) {

      event.preventDefault();
      const num = $(".image-box__images__box").length;
      const id = $(this).attr('id').match(/\d{1,2}/)
      const result = Number( id )
      const emptyform = ("#item_images_attributes_"+id+"_image")
      const deleteId = ("#item_images_attributes_"+result+"_image")
      if (num != 10){
        $(emptyform).val("");
        $(deleteId).remove();
        $(this).parent().remove();
      }

      if (num == 10){

        const picture_id = $(this).attr('id').match(/\d{1,2}/)
        const label_id = $(".label-box").attr('id').replace(/[^0-9]/g, '');

        if (label_id == Number(picture_id)+1){
          $('.label-box').attr({id: `label-box--${Number(label_id)-1}`,for: `item_images_attributes_${Number(label_id)-1}_image`});
          $("#item_images_attributes_"+picture_id+"_image").val("")
          $(this).parent().remove();
        }else{
          $("#item_images_attributes_"+picture_id+"_image").val("")
          $(this).parent().remove();
          $('.image-box__images').after(buildFileField_edit(Number(label_id)));
        }
      }

    });
  }

});
