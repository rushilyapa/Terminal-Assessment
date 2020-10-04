## Software Development Plan

### Statement of Purpose and Scope

Car Spa is a simple CLI app running on the Ruby program. The app allows you to view packages, make a booking or view an existing booking. Most people around the world own a car, and with owning a car, comes with some responsiblity to keep it maintained. Washing a car may seem like a breeze, but it takes time and effort. There are a few options you have like, washing it at home, taking it to a self service wash bay or to your local car wash. Again, all options take time and effort especially for anyone with a busy lifestyle. This app is designed to solve that problem, you simply book in a spot whenever is best convenient for you and someone will be sent to your home to complete the job. A business that works accoridng to you, all from just an app, pretty cool rigtht? The target audience is very open as most people own a car however, it's main target would be anyone working from home or has a busy lifestyle etc. The member of the target audience simply downloads the program and runs it via their Command Line and from there, they will follow the prompts and within 60 seconds, the member can book a spot in.

### Features
  
* Menu - The menu is the home page for the app. From here you can select the following listed below.

* View packages - From here, you will see the packages laid out in a table form using the Terminal-Table Gem. The items will be listed along with what's included and the price. If user finds what they like, it will ask them if they would like to book, allowing it to loop back to "Make Booking" 
  
* Make Booking - Here, the user will input their details like Name, Mobile, Address and their vehicle details(Make and Model). This info will then be stored under "View existing booking"
  
* View Existing Booking - User can check out their booking if they have made one, if not, an error message will pop up letting them know that a booking has not been made and to check out the main menu to book a spot.

### User interaction and experience for the application

The app is so simple, anyone can use it straight away. When the user opens the app, they will begin at the menu screen, with a welcome message and giving them 4 options. "1 - View Packages", "2 - Make Booking", "3 - View an Existing Booking" and "4 - Exit". These are numbered from 1-4, making it easy to input their selection. When the user chooses View Packages, it shows a table with some description of each offering and price. One they have viewed that, the user is asked if they would like to make a booking, if Yes, the Menu pops back and the user can choose what they like. if they Make a Booking, it is straight foward, they fill out their details (Name, Mobile, Address, Vehicle and Wash Package). Once that is done, user can go to "View Existing Booking", this will show all their details in a table form making it clear and easy to read. If user makes another booking, the existing booking will be overridden with the new booking that they made. We then come to the end where the user can "Exit" out of the app.

### FlowChart

<img src="../CarSpaFlowChart.png"/> 

### Implementation plan

https://trello.com/b/aryVKAum/terminal-app

### Requirements and How to Install
 
Car Spa was built on a Mac.
Macs are pre-installed with Ruby however it may be a few versions behind. Here is a link to install the latest Ruby - https://www.ruby-lang.org/en/downloads/

Once Ruby is installed, you will need to download a few Ruby gems, these are the dependencies required in order to run the app.

* TTY-Prompt - https://github.com/piotrmurach/tty-prompt#2-interface
* Colorize - https://stackoverflow.com/questions/29836522/how-to-install-a-ruby-gem
* Terminal Table - https://github.com/tj/terminal-table

Source Code - https://github.com/rushilyapa/Terminal-Assessment

Once that is done, via the link above, download the source code and open the folder in your Terminal and from there enter

"ruby home.rb"

That will activate the program to run. If any case it is not working, please go through the instructions again.
