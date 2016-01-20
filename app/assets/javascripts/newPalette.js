var primaryColor, secondaryColor;
var backgroundNumber = 1;
var pBox, sBox;


//Renders clickable boxes to the screen. Runs once to select primary colors and again to run secondary
function renderBox(boxes, array) {
  var individualName = ["50", "100",
    "200", "300",
    "400", "500",
    "600", "700",
    "800", "900"
  ];
  var hexValue, background;

  for (i = 0; i < array.length; i++) {
    //Sets variables for each stage of the app
    switch (boxes) {
      case "primary":
        hexValue = array[i].palette_500;
        individualName[i] = array[i].name;
        background = array[i].palette_500;
        break;
      case "secondary":
        console.log("secondary");
        hexValue = array[i].accent_400;
        individualName[i] = array[i].name;
        background = array[i].accent_400;
        break;
      case "primaryShades":
        hexValue = array[i];
        background = array[i];
        break;
    }

    //If the page is rendering secondary boxes, it eliminates the null values
    if (boxes == "secondary" && hexValue === null) {} else {
      //writes box into the dom
      var individualBox = "<li class='colorBox " + boxes + " box" + i + "'><p class='renderName'>" + individualName[i] + "</p>";


      individualBox += "<p class='renderHex'>" + hexValue + "</p>";
      individualBox += "</li>";

      $(individualBox).hide().appendTo('.colorBoxes').fadeIn(1000);

      $('.box' + i).css('background', background);

      if (array[i].light) {
        $('.box' + i).css('color', 'rgba(255,255,255,1)');
      } else {
        $('.box' + i).css('color', 'rgba(0,0,0,.87)');
      }
    } //End if statement checking for accents
  } //End for loop
  console.log(backgroundNumber);
  clicks();
} //End renderBox

//Function creates new color palette
function makePalette(primaryOrSecondary) {
  $('container-fluid').css('padding', '0');
  renderBox(primaryOrSecondary, colorsJson);
}

function shades() {
  var shades = [pBox.palette_50, pBox.palette_100,
    pBox.palette_200, pBox.palette_300,
    pBox.palette_400, pBox.palette_500,
    pBox.palette_600, pBox.palette_700,
    pBox.palette_800, pBox.palette_900
  ];

  renderBox('primaryShades', shades);
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
    $('.primary').hide();
    pBox = colorsJson.filter(function(x) {
      if (x.name === primaryColor) {
        return x;
      }
    });
    pBox = pBox[0];
    shades(primaryColor);
    backgroundManipulation();
  });

  $('.primaryShades').click(function() {
    shadesColor = $(this).find('p').html();
    $('.primaryShades').hide();
    if (backgroundNumber < 3) {
      shades(primaryColor);
    } else {
      makePalette("secondary");
    }
    backgroundNumber++;
    backgroundManipulation();
  });

  // when a secondary color is clicked, its
  // value is saved and the secondary colors are hidden.
  $('.secondary').click(function() {
    console.log('clicked');
    secondaryColor = $(this).find('p').html();
    console.log(secondaryColor);
    $('.secondary').hide();
    console.log(primaryColor + "   " + secondaryColor);
    $('#paletteName').removeClass('hidden');
    $('#paletteSubmit').removeClass('hidden');
    sBox = colorsJson.filter(function(x) {
      if (x.name === secondaryColor) {
        return x;
      }
    });
    sBox = sBox[0];
    preview();
  });
}

function preview() {
  // for (i=1; i<=4; i++){
  //   console.log('.background'+i);
  //   $('.background'+i).animate({height: '25%', width: '12.5%', top: '50%', margin: '0'});
  //   //.css('animation', 'palettePreview 1s ease-in forward');
  // }
  $('.backgrounds').animate({height: '50vw', top: '50%'});
  // $('.primarySelected').addClass('colorBox')
  //   .css('background', pBox.palette_500).append("<p>" + pBox.name + "</p>");
  // $('.secondarySelected').addClass('colorBox')
  //   .css('background', sBox.accent_200).append("<p>" + sBox.name + "</p>");

  submit(pBox, sBox);
}

function submit(primary, secondary) {
  //Populates the hidden form with information
  formArray = $('form').children();
  $('container-fluid').css('padding', '0 15px');

  $('#palette_primary_name').val(primary.name);
  $('#palette_secondary_name').val(secondary.name);
  $('#palette_dark_primary').val($('.background2').css('background-color'));
  $('#palette_light_primary').val($('.background3').css('background-color'));
  $('#palette_primary').val($('.background1').css('background-color'));
  $('#palette_secondary').val($('.background4').css('background-color'));
  $('#palette_text_color').val(primary.light);
}
