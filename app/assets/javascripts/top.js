$(document).on('turbolinks:load', 
function() {
  $('.picture1__scroll').slick({
  dots: true,
  arrows: true,
  accessibility: true,
  // prevArrow:'<div class="prev">←</div>',
  // nextArrow:'<div class="next">NEXT</div>',
  autoplay: true,
  autoplayspeed: 5000,
  });
});

// $(function(){
//   $('.picture1__scroll').slick({
//   dots: true,
//   arrows: true,
//   accessibility: true,
//   // prevArrow:'<div class="prev">←</div>',
//   // nextArrow:'<div class="next">NEXT</div>',
//   autoplay: true,
//   autoplayspeed: 5000,
//   });
// });