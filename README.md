# About MySuperChat application

 MySuperChat is webchat application developed in Rails/Slim for users communication. This documentation will help you to introduce to this application and provide more informations about it, for example installation, technologies used and much more.

## Development
I started developing the layout in HTML and css using the mobile first technique, and then created a rails application and move the html and css to rails. 

I generate the migrations(to create the tables) and seeds where i could create the initial users and conversations. 

   - The migrations are located in the dir /db/migrate/
   - The seeds.rb file are located in /db/

## Tecnologies used in the backend

 - Ruby (2.7.5)
 - Rails (6.1.6.1)
 - SQLite3
 - PostgreSQL
 - Slim

# Installation

When you finished the cloning process you be able to access the application folder and execute the commands under the next chapter Installing the application

## Installing and running the application

   To Run this project we assume that you have ruby (2.7.5), and rails (6.1.6.1) installed on your machine. If you don't have it installed it would be better if you access the project on Heroku, we will have a special section bellow about it (`Acessing application in heroku`).

   Run the following commands

 - Clone the application from https://github.com/carlosmarinho/superchat-rails.git
    ```
    git clone https://github.com/carlosmarinho/superchat-rails.git
    ```

 - Get into the application folder
    ```
    cd superchat-railsa
    ```

 - First we need to bundle the application running bundle install
    ```
    bundle install
    ```

 - Run the migrations
    ```
    rake db:migrate
    ```

 - Run the seed
    ```
    rake db:seed
    ```

 - Run rails s to start the server.
   ```
    rails s
    ```

 The last command will run the rails server in the development environment.\
Open [http://localhost:3000](http://localhost:3000) to view it in the browser. See the application pages in this [Go to Heading section](### Application pages on heroku
).

 - You can use this user for login and test the application
   - user: carlos@hotmail.com
   - password: 123456
 
## Acessing application in heroku
   
   We deployed our application in Heroku and you can access it on this link [https://mysuperwebchat.herokuapp.com/](https://mysuperwebchat.herokuapp.com/)

### What's heroku

   - Heroku is a container-based cloud Platform as a Service (PaaS). Developers use Heroku to deploy, manage, and scale modern apps. Our platform is elegant, flexible, and easy to use, offering developers the simplest path to getting their apps to market. [https://www.heroku.com/about](https://www.heroku.com/about)

### Application pages on heroku

 If you want to access all those pages bellow on localhost instead of heroku, you just need to change https://mysuperwebchat.herokuapp.com/ to http://localhost:3000/

 - Login 
   - If you are not logged you can access [https://mysuperwebchat.herokuapp.com/](https://mysuperwebchat.herokuapp.com/) and you'll be redirect to [https://mysuperwebchat.herokuapp.com/users/sign_in](https://mysuperwebchat.herokuapp.com/users/sign_in)
 
 - Register
   - [https://mysuperwebchat.herokuapp.com/users/sign_up](https://mysuperwebchat.herokuapp.com/users/sign_up)
 
 - Home (Chat)
   - If you are already logged you can access [https://mysuperwebchat.herokuapp.com/](https://mysuperwebchat.herokuapp.com/users/sign_up). 
   - You'll be redirect to the home page after login
 
 - Forget Password
   - (https://mysuperwebchat.herokuapp.com/users/password/new)[https://mysuperwebchat.herokuapp.com/users/password/new]

 - Sign Out
   - (https://mysuperwebchat.herokuapp.com/users/sign_out)[https://mysuperwebchat.herokuapp.com/users/sign_out]

 - Profile
   - (https://mysuperwebchat.herokuapp.com/users/edit.<user_id>)[https://mysuperwebchat.herokuapp.com/users/edit.<user_id>]

 - Administrator
   - You need to login with a admin user. the user carlos@hotmail.com is administrator, you can login with this user and access the bellow page
   - (https://mysuperwebchat.herokuapp.com/admin/)[https://mysuperwebchat.herokuapp.com/admin/]

## @TODO and Refactories

### Heroku issues with the avatar Images.

   Need to check what happens with heroku, when we do new deploy or any other event happens there (on Heroku) it kind of delete heroku active_storage and the image is deleted, and we end up with some avatars images broken

### Test

  As the urgency and the lack of time I couldn't do any tests yet, but we were supposed to do the test as soon as possible

### CSS, HTML, JS, Ajax

#### Search Users 

   On the conversations left side we have search bar, to search users that is not working

#### Chat filters

   On the conversations left side we have a filtering that is not implemented to filter conversations by type

#### Refactor CSS to SASS
   Although we use a extension '.scss' I really didn't implement anything with sass, so it's really necessary to refactor this css part

#### Change the views/layouts/application.html.erb to slim file

   Change the views/layouts/application.html.erb to a slim file

#### Refactor some pages from devise that is still in .erb

   Refactor some pages from devise that is still in .erb to .slim, 

#### Move toaster to the header

   Move toaster to the header, today it's located at views/layouts/application.html.erb to the views/layouts/_header.html.slim
#### Treat Error handling right when sending message

   If we got an error attempting to send the messege, instead of showing a simple alert we should open a modal with the possible errors 

#### Ajax interactions when change conversations

   Because lack of time we didn't implement this, and today when we change conversations we add the conversation-id in the url and reload the page.

### Translation (I18n) 

   We can use I18n to have more than one language on our application. We have an item on our menu for this, but it's need implementation.
### Implement the following pages

#### Home Page for new users

   We need to implement this new page, when a new users join this user won't have any conversations, and it is showing the home conversation chat, but this page is supposed to be shown only for users tha has conversations, and for this reason the home page it seems to be broken for a new user.

#### Invite

  - It's extremily important to create a invite page where users can send invitation to others users, or can add an user that is already in the application 

#### Notifications

  - We can implement a notifications moda, and when there is notifications we can add red flag besides the bell icon

#### Notes

  - We should create the notes pages, where the user can create some notes, that can be helpfull for him.

#### Settings
 
  - We should create settings pages, in order the user can have some interesting configuration like 

#### Calls

  - It would be interest to have a feature to do audio or video calls.

### Open socket to handle the chat

  - Today all the conversations is stored in the database, and we should reload the page or use some ajax fashion to update the conversation, we should improve our application using socket to conversation, that will prevent reloads or/and requests and the performance will be much higher. 

