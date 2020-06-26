# BLEEPER a twitter alternative

This is a Rails application that creates a basic twitter like page with the functionality to post 'tweets' to the public and add tags to them. It also allows posts to found via popular tags. Functionality also includes:
- User accounts (creation, edit and delete)
- Bleep edits and delete


Ruby version 2.7.1

Configuration:
-
Gems neeeded:
- gem 'bcrypt'
- gem 'bootstrap'
- gem 'jquery-rails'
- gem 'pg'

## Database creation:
As per above the database used for this is PostgreSQL ("pg"). A pg database must be active on the server machine.

## Database initialization:
The following Rails commands must be run to initialize the database:
`rails db:migrate`
`rails db:seed`
If on local device start teh server with:
`rails server`
