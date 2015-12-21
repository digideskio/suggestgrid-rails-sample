## SuggestGrid Ruby/Rails Sample

### Setup

First init db and seed sample movie data;

```shell
rake db:migrate
rake db:seed
```
Get your connection url via signing up or installing Heroku addon.

Ensure to add your connection url at `config/initializers/suggestgrid.rb`.

```ruby
  sg_uri = URI(ENV['SUGGESTGRID_URL'] || 'your-connection-url')
```

Now you need to initialize a space and type at SuggestGrid. You can use predefined rake task;

```shell
rake suggestgrid:initialize
```

That task will read space name for environment config file depending on your env setting and create it. It will also create a type with name `views`.

If you run your application and navigate at movies, each click will be sent to SuggestGrid as userid-itemid pairs including anonymous users who are not logged in (A guest user is created and stored to cookie). You can create sample users, login and navigate to create additional behaviors.

After getting some enough data from various users, please go to your SuggestGrid dashboard overview and manually trigger model generation. That will calculate your recommendation model. Please refresh your overview page to see manual trigger is completed.

You will see recommendations for users at index page, also for movies which are navigated, if you click to details, you can see recommended similar movies and similarities (not specific to current user).
