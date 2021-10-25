# DistributedTask

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/distributed_task`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installationz

Add this line to your application's Gemfile:

```ruby
gem 'distributed_task'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install distributed_task

## Usage

execute:

    $ rails g distributed_task:install

for server:

    $ rails g distributed_task:server

    $ bundle exec gruf

for client:

    $ rails g distributed_task:client

    JobsClient.exec("127.0.0.1:3003", "namespace:task")

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DistributedTask project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/distributed_task/blob/master/CODE_OF_CONDUCT.md).
