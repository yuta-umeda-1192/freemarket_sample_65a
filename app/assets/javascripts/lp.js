$(document).on('turbolinks:load', function(){
  $('.lp-item-list').css('opacity', '0.25')
  $('.lp-item-list').animate({
      'opacity': 1
    },
    1300,
    'swing',
  );
});

