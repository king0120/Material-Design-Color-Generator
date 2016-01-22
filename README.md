#Material Design Color Generator
##ATL WDI Project #1


##Planning

<img src="http://i.imgur.com/fEUFH0x.png" alt="user stories">
<img src="http://i.imgur.com/w4KjCnA.png" alt="erd kinda">
<img src="http://i.imgur.com/xEmCxzp.png" style="float:left" alt="wireframe left"><br>
<img src="http://i.imgur.com/yQEin5p.png" style="float:left" alt="wireframe right"><br>
[Trello](https://trello.com/b/NHaNca52/wdi-project-2)<br><br>
[Material Design Specs](https://www.google.com/design/spec/material-design/introduction.html)



##Building
###Tools
<img src="https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Ruby_on_Rails.svg/791px-Ruby_on_Rails.svg.png" width='200px' alt="">
<img src="https://pbs.twimg.com/profile_images/70872395/Picture_2_400x400.png" width='200px' alt="">
<br/>
<img src="https://camo.githubusercontent.com/b1c21cc10f2f94857dea5135fe55f2e4d451e028/68747470733a2f2f7261772e6769746875622e636f6d2f706c617461666f726d617465632f6465766973652f6d61737465722f6465766973652e706e67" width='200px' alt="">
<img src="https://www.filyawconsulting.com/wp-content/uploads/2015/10/bootstrap-website-design-Atlanta-GA.png" width='200px' alt="">

###Issues

#####Pushing to Heroku
When I first tried to deploy to Heroku, my upload was aborted multiple times.  Heroku could not read the secret key needed by Devise for the upload.  Fixed this through altering my gitignore file (temporary fix)


#####Organization
As my app grew, it became harder to keep track of the Javascript and Sass due lack of comments and organization.  Currently working to fix this.

#####Secret Forms
One of the main things I wanted to incorporate into my design was a really easy experience when trying to add a color scheme.  In order to do this, I used JavaScript to fill out a form that is hidden on the page.  After all colors have been selected, the name form and submit button appear for the user to save their colors.

##Planned Updates:
1. Favorites tab: User can click to save color schemes made by other users.
2. Click to Copy.  Clicking a color will automatically add it to clipboard.
3. Expanded profiles.
4. Better name.
5. Original background assets.
6. Add color scheme to demo layouts.



#Enjoy!
