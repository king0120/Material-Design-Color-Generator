#Material Design Color Generator
##ATL WDI Project #1

<img src="images/tetris-screenshot.png" width='700px' alt="">


##Planning
###Wireframes:
<img src="images/mockup.png" width='500px' alt="">


###Notes and Mockups
<img src="images/notecards.jpg" width='300px' style="float:left" alt="">
<img src="images/planning1.jpg" width='300px' style="float:left" alt="">
<img src="images/planning2.jpg" width='300px' style="float:left" alt=""><br>
[Trello](https://trello.com/b/g5dBuQrF/tetris-wdi-project-1)<br><br>
[Tetris Wikipedia Article](https://en.wikipedia.org/wiki/Tetris)



##Building
###Software
<img src="images/jade.png" width='300px' alt="">
<img src="images/sass-logo.png" width='200px' alt="">
<img src="images/html5.png" width='200px' alt="">
<img src="images/codekit.png" width='300px' alt="">

###Issues

#####Nested for loops
  ```javascript
    for (var j = 0; j < shapes.length; j++) {
      for (var i = 0; i < fallen.length; i++)
  ```
      vs.
  ```javascript
    for (var i = 0; i < fallen.length; i++) {
      for (var j = 0; j < shapes.length; j++) {
  ```
  Result: Speed quadruples every time a new tetrino is made


#####Animating in HTML5 Canvas
  ```javascript
  var myState = canvas;
  myState.interval = 33 / 2;

  function drawing() {
    draw(canvas);
  }

  setInterval(drawing, myState.interval);
  ```
  Every second, the canvas erases and redraws everything 60 times.
  Required me to consider how movement and animation works. (Shoutout to the [Animation Thunder Talk](https://github.com/sims226/thunder-animation-basics))

#####Type and orientation of falling tetrino
  ```javascript
  switch (tetrino[0].color) {
    case "#9013FE": //tBlock
      switch (true) {
        case (Math.ceil(tetrino[0].x - tetrino[2].x) === 1 ||
              Math.ceil(tetrino[0].x - tetrino[2].x) === 0) &&
              Math.ceil(tetrino[0].y - tetrino[2].y) === Math.ceil(tHeight):
          tetrino[0].x += left;
          tetrino[0].y += up;
          tetrino[1].x += left;
          tetrino[1].y += down;
          tetrino[3].x += right;
          tetrino[3].y += up;
          break;
  ```
  Since each of the 4 blocks are written independant of one another, I used multiple switch statements to detect which tetrino was dropping, which rotation it was in, and provide instructions for it to turn clockwise.
  In total, I had to determine the type and orientation of 18 different combinations of tetrino.

##Planned Updates:
1. Horizontal collision detection with walls to keep block from going off screen
2. Scoring according to official tetris rules
3. Top Score Feature
4. Add levels that increase the speed of the falling block
5. Fix sizing of .png images and make more responsive
6. Add touch controls for mobile
7. Add a restart button and game over screen


#Enjoy!
