function edit(){
  $('.showBox').click(function(){
    $('h1').fadeOut(500);
    $('.savedPalette').fadeOut(500);
    $('.overlay').css('z-index', '1').fadeTo(500, 1);
    $('.overlay').append("<ul class='colorBoxes'>");
    console.log('clicked');
    if ($(this).hasClass('primary')){
      renderBox('primary', colorsJson);
      backgroundManipulation();
      $('h2').text('Select Your Primary Color:').css('color', 'black')
      .hide().fadeIn(1500);
    } else {
      var back1 = $('.primaryLightBack').css('background-color');
      var back2 = $('.primaryBack').css('background-color');
      var back3 = $('.primaryDarkBack').css('background-color');
      backgroundNumber = 4;
      $('.background1').css('background-color', back1);
      $('.background2').css('background-color', back2);
      $('.background3').css('background-color', back3);

      renderBox('secondary', colorsJson);
      $('h2').text('Select A New Secondary Color:').css('color', 'black');
    }
  });

}
