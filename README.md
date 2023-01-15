# Online status using action cable

This is a demo app to show you how to show the current online state of a user using ActionCable.

## Creating the project

This project was generated using the following command.

```sh
rails new online_status --skip-jbuilder --skip-test --css=tailwind --javascript=esbuild
```

## Running the project

To get set up, run the `bin/setup` script, to install dependencies, create the database, migrate and seed it with some sample data.

Then run `bin/dev` and `open localhost:3000`.

## Creating the action cable channel

```sh
$ bin/rails g channel Online
```

### Making User.rb "live"

Add this to the top of the model

```ruby
after_update_commit { broadcast_replace_to("online_users") }
```

And this to your view file that you want to listen for changes

```ruby
<%= turbo_stream_from "online_users" %>
```

### License

This code is licensed under the MIT License.
