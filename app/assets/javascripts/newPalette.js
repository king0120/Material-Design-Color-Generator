var primaryColor, secondaryColor;
var backgroundNumber = 1;
var pBox, sBox, hexValue;
var pri1, pri2, pri3, acc;

//Renders clickable boxes to the screen. Runs once to select primary colors and again to run secondary
function renderBox(boxes, array, light) {
  var individualName = ["50", "100",
    "200", "300",
    "400", "500",
    "600", "700",
    "800", "900"
  ];
  var background;

  for (i = 0; i < array.length; i++) {
    //Sets variables for each stage of the app
    switch (boxes) {
      case "primary":
        hexValue = array[i].palette_500;
        individualName[i] = array[i].name;
        background = array[i].palette_500;
        fontColor = array[i].light;
        break;
      case "secondary":
        hexValue = array[i].accent_400;
        individualName[i] = array[i].name;
        background = array[i].accent_400;
        fontColor = array[i].light;
        break;
      case "primaryShades":
      case "secondaryShades":
        hexValue = array[i];
        background = array[i];
        fontColor = light;
        break;
    }
    $('h2').css('color', fontColor);
    //If the page is rendering secondary boxes, it eliminates the null values
    if (boxes == "secondary" && hexValue === null) {} else {
      //writes box into the dom
      var individualBox = "<li class='colorBox " + boxes + " box" + i + "'><p class='renderName'>" + individualName[i] + "</p>";


      individualBox += "<p class='renderHex'>" + hexValue + "</p>";
      individualBox += "</li>";

      $(individualBox).addClass('animated flipInX').appendTo('.colorBoxes');

      $('.box' + i).css('background', background);

      if (fontColor) {
        $('.box' + i).css('color', 'rgba(255,255,255,1)');
      } else {
        $('.box' + i).css('color', 'rgba(0,0,0,.87)');
      }
    } //End if statement checking for accents
  } //End for loop
  // console.log(backgroundNumber);
  clicks();
} //End renderBox

//Function creates new color palette
function makePalette(primaryOrSecondary) {
  renderBox(primaryOrSecondary, colorsJson);
}

function shades() {
  var shades = [pBox.palette_50, pBox.palette_100,
    pBox.palette_200, pBox.palette_300,
    pBox.palette_400, pBox.palette_500,
    pBox.palette_600, pBox.palette_700,
    pBox.palette_800, pBox.palette_900
  ];

  var textColor = pBox.light;

  renderBox('primaryShades', shades, textColor);
}

function accentShade(){
  var shades = [sBox.palette_100, sBox.palette_200,
    sBox.palette_400, sBox.palette_700
  ];
  var textColor = sBox.light;
  renderBox('secondaryShades', shades, textColor);
}

function backgroundManipulation() {
  //Changes the background color based on the element being hovered over
  $('.colorBox').hover(function() {
    var backgroundColor = $(this).css("background-color");
    $('.background' + backgroundNumber).css('background', backgroundColor);
    // if($(this).hasClass('primary') || $(this).hasClass('primaryShades')){
    // } else {
    // $('.background2').css('background', backgroundColor);
    // }
  });
}



function clicks() {
  //when a primary color is clicked, it's value
  //is saved and the secondary colors are rendered
  $('.primary').click(function() {
    backgroundNumber++;
    primaryColor = $(this).find('p').html();
    pri1 = $(this).find('.renderHex').html();
    console.log(pri1);
    $('.primary').hide();
    pBox = colorsJson.filter(function(x) {
      if (x.name === primaryColor) {
        return x;
      }
    });
    pBox = pBox[0];
    $('h2').text('Choose two more colors:');
    shades(primaryColor);
    backgroundManipulation();
  });

  $('.primaryShades').click(function() {
    shadesColor = $(this).find('p').html();
    if (pri2===undefined){
      pri2 = $(this).find('.renderHex').html();
    } else {
      pri3 = $(this).find('.renderHex').html();
    }
    $('.primaryShades').hide();
    if (backgroundNumber < 3) {
      shades(primaryColor);
    } else {
      $('h2').text('Select an accent color:');
      makePalette("secondary");
    }
    backgroundNumber++;
    backgroundManipulation();
  });

  // when a secondary color is clicked, its
  // value is saved and the secondary colors are hidden.
  $('.secondary').click(function() {
    secondaryColor = $(this).find('p').html();
    acc = $(this).find('.renderHex').html();
    $('.secondary').hide();
    sBox = colorsJson.filter(function(x) {
      if (x.name === secondaryColor) {
        return x;
      }
    });
    sBox = sBox[0];
    $('h2').text('Choose the shade of your accent color:');
    accentShade();
    backgroundManipulation();
    // preview();
  });

  $('.secondaryShades').click(function(){
    SecondaryColor = $(this).find('p').html();
    $('.secondaryShades').hide();
    $('#paletteName').removeClass('hidden');
    $('#paletteSubmit').removeClass('hidden');
    $('.updateMessage').removeClass('hidden');
    if ($('h2').hasClass('updateMessage' === false)){
      $('h2').css('color', 'black')
      .text('You did it! Now name your color palette:');
    } else {
      $('h2').css('color', 'black')
      .text('Looks great! Rename?');
    }
    preview();
  });
}

function preview() {
  $('.backgrounds').animate({height: '50vw', top: '50%'});

  submit(pBox, sBox);
}

function submit(primary, secondary) {
  var checkOverlay = $('.overlay').css('opacity');
  if (parseInt(checkOverlay) === 1){
    $('.overlay').css('z-index', '-3').fadeTo(0, 0);

  }
  //Populates the hidden form with information
  formArray = $('form').children();
  $('container-fluid').css('padding', '0 15px');
  if (primary !== undefined){
    $('#palette_primary_name').val(primary.name);
    $('#palette_text_color').val(primary.light);
    $('#palette_dark_primary').val(pri2);
    $('#palette_light_primary').val(pri3);
    $('#palette_primary').val(pri1);
  }
  $('#palette_secondary_name').val(secondary.name);
  $('#palette_secondary').val(acc);

}
