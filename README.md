## Chatty: The Rails 5 + Action Cable Example App

This is a really simple chatting app to demonstrate one implementation of Action Cable in a Rails 5 app. Users can sign up/log in with a username and create a chatroom or choose from an existing one to start real-time messaging.

For a walk-through of this application, and to learn more about Action Cable (it's awesome, btw), you can check out [my article on the Heroku blog](https://blog.heroku.com/archives/2016/5/9/real_time_rails_implementing_websockets_in_rails_5_with_action_cable). You can view my deployment of this application [here](https://action-cable-example.herokuapp.com), or you can use the button below to deploy your own version (you'll need a Heroku account for that).

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

To view an implementation of this project that uses multipe subscriptions to multiple chatrooms, check out this [repo](https://github.com/SophieDeBenedetto/rails-5-action-cable-meetup)

### Running Locally

You'll need:

* Ruby 2.3.0
* Postgres
* Redis

Then, once you clone down this repo:

* `bundle install`
* `rake db:create; rake db:migrate`

And you're all set.


