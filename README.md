# Pomodoro

Pomodoro is a web application built by Reuben Son that combines
the [Pomodoro method](http://lifehacker.com/productivity-101-a-primer-to-the-pomodoro-technique-1598992730)
with a simple To Do list tracker.
The app is live at [https://infinite-plains-36650.herokuapp.com/](https://infinite-plains-36650.herokuapp.com/).

# Stack
The stack consists of Rails and Angular, with PostgreSQL for the database. For implementation
as a single-page web application, I decided to use Angular.js to handle responsive behavior.
The ease of bootstrapping an Angular application right into an HTML document made it an appealing
option for integrating it with a Rails backend. Additionally, I chose to use Angular 1.4.9 (the most
recent build of Angular 1) instead of using Angular 2 because of the likeliness of encountering pre-V2
Angular in production codebases. I had very limited experience with Angular prior to building
this application and it seemed valuable in the short-term to have experience with Angular 1.

As a developer who has worked primarily with Rails, the ease and robustness of building a
Rails API made it an easy choice. In addition to having Rails handle the API for To Do items,
it is also used to handle user signup and login sessions, which simplifies the implementation
of the Angular app by eliminating its need to know anything about the user.

In this sense, the app might be considered to be an integrated Rails-Angular application, instead of
a purely Angular front-end with a purely Rails back-end.

# To run locally
Fork this repo, run 'bundle install', run 'rake db: create && rake db: migrate', run 'rails server'
