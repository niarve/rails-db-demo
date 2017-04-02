# Rake Demo CSE3901
###### Building a db in Ruby on Rails using Rake
---

#### Installation
```sh
  rails new app
  cd app
```

---

#### Create database
```sh
  rake db:create
```

---

#### Building the game
```sh
    $ gulp build
```
This will create a directory 'build' containing an artifact for deployment. To test deployment as a served web page:
```sh
    $ gulp serve
```
Then just go to localhost:3000 in your browser!

---

#### Deployment
In order to deploy, you must first have correct access rights to the cse3901-osu-2017sp-1350/proj5-diamonds-deploy.git repository. Please contact Diamonds on Driveways team members for details.

To deploy use this command:
```sh
    $ gulp deploy
```
This command will deploy the 'build' directory to this [GitHub Page]

###### Important Deployment Information:
This GitHub page is hosted from a public repository (you cannot host GitHub pages from private repositories). In order to prevent other students from copying our code we took several safety precautions. First, we concatenated html, javascript, and css into index.html, app.bundle.js and app.css respectively in order to prevent our directory structure and code management from being compromised. To further prevent exposure, we uglified and minified our javascript and css to prevent students from easily being able to understand our code. If deploying, we politely ask that all uglification and minification be enabled in the Gulpfile (not commented out).

---
#### Game Features

###### New Game
Restarts the application without closing the window

###### Rules
Displays the game rules

###### Hint
Provides an alert with a small detailed hint that either:
* Tells you how many sets are on the board
* Shows you a single card that is involved in a set
* Shows you all three cards in a set
* Says there are no sets on the board

###### Rearrange
Rearranges the cards on board, might make it easier to find cards on the board

###### Shuffle
Shuffles cards on the board back into the deck and places 12 random cards on the board from the deck. In case there are no sets on the board, shuffle allows you to continue playing without having to start a new game

###### Settings
Allows you to edit the following Settings
* Audio/Background music (music by Tanner Helland)
* Background Color of the display

[Game of Set]: <http://www.setgame.com/sites/default/files/instructions/SET%20INSTRUCTIONS%20-%20ENGLISH.pdf>
[GitHub Page]: <https://cse3901-osu-2017sp-1350.github.io/proj5-diamonds-deploy>

![Create](/md-images/create.png)
