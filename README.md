# Url shortner!

#### An app to keep track of url clicks.

#### Allows users to add the links they want to keep track with and the details of history clicks and OS system.

<img src="demo.gif" alt="short demo of app">

## Ruby Version
ruby "3.2.0"

# Rails version
"rails", "~> 7.0.6"

## How it works
- Users can post a url link to keep track of it.
- The app provides with a custom url link to share around different networks.
- Users can follow the track of analytics

## Structure
#### Ruby on Rails in a classic MVC pattern. Devise is used for user authentification. SQLite database.

to start:
`bundle install, rails db:migrate`, `rails db:seed`, `rails s`

### Controllers
- **Clicks**: for when users want to add 'clicks' to a specific URL.
- **Links**: Manages the added links the user has created.

### Models
- **clicks**: just updates the clicks count
- **links**: creates the custom url link and what type of URL it allows to process through.

### Views
Much as one would expect. Notable files:
- **links/index** has the form for posting a new url and shows the click analytics of each url.
