//Jqueryテスト
$(function(){
  $('.lp')
    .on('mouseover', function(){
      $('.lp').css({
      'transform':'rotate(5deg)',
      'color':'blue',
      'opacity': 0.5
      });
    })
    .on('mouseout', function(){
      $('.lp').css({
      'transform':'',
      'color':'',
      'opacity': ''
      });
    });
});

$(function(){
  $('.lp2')
    .css('margin-left', '100px')
    .on('click', function(){
      $('.lp2').animate({
          'color' : 'blue',
          backgroundColor: 'yellow',
          'margin-left': '400px'
        },
        800,
        'easeOutQuint',
        function(){
          $('.lp2').animate({
            'margin-left': '100px'
          },
          300,
          'easeOutQuint',
          );
        }
      );
    });
});

$(function(){
  $('.lp3')
    .on('mouseover', function(){
      $('.lp3').stop(true).animate({
        backgroundColor: 'blue'
      },
      500
      );
    })
    .on('mouseout', function(){
      $('.lp3').stop(true).animate({
        backgroundColor: 'yellow'
      },
      500
      );
    });
});

//ここから本ちゃんのやつ
$(function(){
  $('.lp-item-list').css('opacity', '0.25')
  $('.lp-item-list').animate({
      'opacity': 1
    },
    1300,
    'swing',
  );
});

