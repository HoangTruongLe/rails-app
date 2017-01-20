$(function() {
  
    $("#uploadBtn").on("change", function () {
      $("#uploadPath").val($("#uploadBtn").val());
      console.log($("#uploadPath").val());
    })
    $("#product_video_url").on("change", function(){
      var changeEmbeded = $(this).val();

      changeEmbeded = changeEmbeded.replace('watch?v=', 'embed/')
      $(this).val(changeEmbeded);
      var video_frame = '<div class="hs-responsive-embed-youtube"><iframe src="' + changeEmbeded + '"frameborder="0" width="100%" allowfullscreen ></iframe></div>';
      var video_frame_holder = document.querySelector('#video-frame-holder');
      video_frame_holder.innerHTML = video_frame;

    })
    
    $("#uploadBtn").on("change", function(){
    $('#preview').empty();
    var preview = document.querySelector('#preview');
    console.log(preview.children);
    var files   = document.querySelector('input[type=file]').files;

    function readAndPreview(file) {

      if ( /\.(jpe?g|png|gif)$/i.test(file.name) ) {
        var reader = new FileReader();

        reader.addEventListener("load", function () {
          var image = new Image();
          image.height = 100;
          image.width = 100;
          image.title = file.name;
          image.src = this.result;
          var col = document.createElement('div');
          col.className = "col-md-3";
          var card = document.createElement('div');
          card.className = "card";
          var wrapper = document.createElement('div');
          wrapper.className = "thumbnail";
          wrapper.appendChild(image);
          card.appendChild(wrapper)
          col.appendChild(card);
          preview.appendChild(col);
              
        }, false);

        reader.readAsDataURL(file);
      }

    }

    if (files) {
      [].forEach.call(files, readAndPreview);
    }
  })
})
