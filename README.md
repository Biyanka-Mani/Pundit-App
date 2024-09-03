# Pundit App 🛡️

This is a small Ruby on Rails application built to demonstrate the usage of the `Pundit` gem for user authorization. The app has two types of users: Admin and regular users. Only Admin users are authorized to create and edit articles, while regular users are restricted from performing these actions.

## Features

- **User Management:** Two types of users—Admin and regular users.
- **Article Management:** Only Admin users can create and edit articles.
- **Authorization:** Implemented using the `Pundit` gem to control access based on user roles.
- **Access Control:** Regular users are restricted from performing unauthorized actions, with appropriate error messages displayed.

## Gems Used

### `Pundit`
The `Pundit` gem is used to manage authorization within the application. Pundit provides a simple and intuitive way to define policies that determine what actions a user is allowed to perform.

- **Installation:** Add the gem to your `Gemfile`:
  ```ruby
  gem 'pundit'
