$(document).on('turbolinks:load', 
function() {
  $(".thumbnails-frame__thumbnail img").on('mouseover',function(){
    var dataUrl = $(this).attr('data-url');
    $("#main-image img").attr('src',dataUrl);
  });
});


