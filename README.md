# Last seen plugin

This plugin provides the traditional _last seen_ functionality for Cinch bots.

## Installation
First install the gem by running:
    [sudo] gem install cinch-last_seen

Then load it in your bot:
    require "cinch"
    require "cinch/plugins/last_seen"

    bot = Cinch::Bot.new do
      configure do |c|
        # add all required options here
        c.plugins.plugins = [Cinch::Plugins::LastSeen] # optionally add more plugins
      end
    end

    bot.start

## Commands
### !seen <nick>
This checks if and when someone was last seen. The plugin will either
respond with the time, channel and message or state that it has never
seen the person before.

## Options
### :channels
#### :include
Specify a list of channels the bot should log messages for. If this
option is set, `:exclude` will be ignored.

#### :exclude
Specify a list of channels the bot should not log messages for. All
other channels will be logged.

#### A note
If neither `:include` nor `:exclude` are set, all channels will be logged.

#### Example configuration
    # ...
    configure do |c|
      # only log messages for #cinch-bots
      c.plugins.options[Cinch::Plugins::LastSeen][:channels] = {:include => ["#cinch-bots"]}
    end
