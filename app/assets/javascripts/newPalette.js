//Renders clickable boxes to the screen. Runs once to select primary colors and again to run secondary

var primaryColor, secondaryColor;

function renderBox(boxes){
  for (i=0;i <colorsJson.length; i++){
    if (boxes == "secondary" && colorsJson[i].accent_400 === null){

    } else {
    var individualBox = "<li class='colorBox " + boxes + " box" + i +"'><p class='renderName'>"+ colorsJson[i].name + "</p>";
    var hexValue;
    switch (boxes){
      case "primary":
        hexValue = colorsJson[i].palette_500;
        break;
      case "secondary":
        hexValue = colorsJson[i].accent_400;
    }

    individualBox += "<p class='renderHex'>" + hexValue + "</p>";
    individualBox += "</li>";

    $(individualBox).hide().appendTo('.colorBoxes').fadeIn(1000);

    if (boxes === "primary"){
      $('.box'+i).css('background', colorsJson[i].palette_500);
    } else {
       $('.box'+i).css('background', colorsJson[i].accent_200);
    }

      if (colorsJson[i].light){
        $('.box'+i).css('color', 'rgba(255,255,255,1)');
      } else {
        $('.box'+i).css('color', 'rgba(0,0,0,.87)');
      }
    }
  }
}

//Function creates new color palette
function makePalette(primaryOrSecondary){


//    $('.container').css('width', '100%');
    console.log("hello from newPalette.js");

    renderBox(primaryOrSecondary);


    $('.colorBox').hover(function(){
      var backgroundColor = $(this).css("background");
      if($(this).hasClass('primary')){
        $('.background').css('background', backgroundColor);
      } else {
        $('.background2').css('background', backgroundColor);
      }
    });

    //when a primary color is clicked, it's value
    //is saved and the secondary colors are rendered
    $('.primary').click(function(){
      primaryColor = $(this).find('p').html();
      console.log(primaryColor);
      $('.primary').hide();
      console.log('still here!');
      $('.background2').css('width', '50%');
      makePalette("secondary");
    });


    //when a secondary color is clicked, its
    //value is saved and the secondary colors are hidden.
    $('.secondary').click(function(){
      console.log('clicked');
      secondaryColor = $(this).find('p').html();
      console.log(secondaryColor);
      $('.secondary').hide();
      console.log(primaryColor + "   " + secondaryColor);
      previewAndSubmit();
    });
}


function previewAndSubmit(){

  var pBox = colorsJson.filter(function(x){
    if (x.name === primaryColor){
      return x;
    }
  });

  pBox = pBox[0];
  var sBox = colorsJson.filter(function(x){
    if (x.name === secondaryColor){
      return x;
    }
  });
  sBox = sBox[0];

  $('.primarySelected').addClass('colorBox')
  .css('background', pBox.palette_500).append("<p>" + pBox.name + "</p>");
  console.log(pBox);
  $('.secondarySelected').addClass('colorBox')
  .css('background', sBox.accent_200).append("<p>" + sBox.name + "</p>");
  console.log(pBox);
  // $('.primarySelected')
  formArray = $('form').children();
  console.log(pBox.name);
  console.log(sBox.name);
  $('#palette_primary_name').val(pBox.name);
  $('#palette_secondary_name').val(sBox.name);
  $('#palette_dark_primary').val(pBox.palette_700);
  $('#palette_light_primary').val(pBox.palette_100);
  $('#palette_primary').val(pBox.palette_500);
  $('#palette_secondary').val(sBox.accent_200);
  $('#palette_text_color').val(pBox.light);

}

