# TelegramBot

![Crystal CI](https://github.com/mamantoha/telegram_bot/workflows/Crystal%20CI/badge.svg?branch=develop)
[![GitHub release](https://img.shields.io/github/release/mamantoha/telegram_bot.svg)](https://github.com/mamantoha/telegram_bot/releases)
[![Docs](https://img.shields.io/badge/docs-available-brightgreen.svg)](https://mamantoha.github.io/telegram_bot/)

[Telegram Bot API](https://core.telegram.org/bots/api) (3.2) wrapper for Crystal

> This is a fork of [telegram_bot](https://github.com/hangyas/telegram_bot) which was originally written by Krisztián Ádám.
>
> The original repository is no longer maintained and does not work with the latest Crystal version.

## Current features

api methods and types:

- [x] basic message types
- [x] stickers
- [x] inline mode
- [x] payments
- [x] games

getting updates:

- [x] long polling
- [x] webhooks

additional features:

- [x] white & black lists
- [x] command handler

## Usage

Create your bot by inheriting from `TelegramBot::Bot`.

### Commands

Define which commands your bot handles via the `cmd` method in the `CmdHandler` module. For example, respond `world` to `/hello` and perform simple calculation with `/add`:

```crystal
require "telegram_bot"

class MyBot < TelegramBot::Bot
  include TelegramBot::CmdHandler

  def initialize
    super("MyBot", TOKEN)

    cmd "hello" do |msg|
      reply msg, "world!"
    end

    # /add 5 7 => 12
    cmd "add" do |msg, params|
      reply msg, "#{params[0].to_i + params[1].to_i}"
    end
  end
end

my_bot = MyBot.new
my_bot.polling
```

### Logging

```crystal
MyBot::Log.level = :debug
MyBot::Log.backend = ::Log::IOBackend.new

my_bot = MyBot.new
my_bot.polling
```

### Custom handlers

Override any of the following `handle` methods to handle Telegram updates, be it [messages](https://core.telegram.org/bots/api#message), [inline queries](https://core.telegram.org/bots/api#inlinequery), [chosen inline results](https://core.telegram.org/bots/api#choseninlineresult) or [callback queries](https://core.telegram.org/bots/api#callbackquery):

```crystal
def handle(message : Message)

def handle(inline_query : InlineQuery)

def handle(chosen_inline_result : ChosenInlineResult)

def handle(callback_query : CallbackQuery)

def handle_edited(message : Message)

def handle_channel_post(message : Message)

def handle_edited_channel_post(message : Message)
```

For example, to echo all messages sent to the bot:

```crystal
class EchoBot < TelegramBot::Bot
  def handle(message : Message)
    if text = message.text
      reply message, text
    end
  end
end

EchoBot.new.polling
```

Or to answer inline queries with a list of articles:

```crystal
class InlineBot < TelegramBot::Bot
  def handle(inline_query : TelegramBot::InlineQuery)
    results = Array(TelegramBot::InlineQueryResult).new

    content = InputTextMessageContent.new "Article details"
    results << TelegramBot::InlineQueryResultArticle.new("article/1", "My first article", content)

    answer_inline_query(inline_query.id, results)
  end
end

InlineBot.new.polling
```

Remember to [enable inline mode](https://core.telegram.org/bots/api#inline-mode) in BotFather to support inline queries.

### Webhooks

All the examples above use the [`getUpdates`](https://core.telegram.org/bots/api#getupdates) method, constantly polling Telegram for new updates, by invoking the `polling` method on the bot.

Another option is to use the [`setWebhook`](https://core.telegram.org/bots/api#setwebhook) method to tell Telegram where to POST any updates for your bot. Note that you __must__ use HTTPS in this endpoint for Telegram to work, and you can use a self-signed certificate, which you can provide as part of the `setWebhook` method:

```crystal
# Certificate has the contents of the certificate, not the path to it
bot.set_webhook(url, certificate)
```

After invoking `setWebhook`, have your bot start an HTTPS server with the `serve` command:

```crystal
bot.serve("0.0.0.0", 443, "path/to/ssl/certificate", "path/to/ssl/key")
```

If you run your bot behind a proxy that performs SSL offloading (ie the proxy presents the certificate to Telegram, and then forwards the request to your app using plain HTTP), you may skip the last two parameters, and the bot will listen for HTTP requests instead of HTTPS.

When running your bot in `serve` mode, the bot will favour executing any methods by sending a response as part of the Telegram request, rather than executing a new request.

### White/blacklists

However it's not part of the API you can set black or white lists in the bot's constructor to filter your users by username.

`whitelist`: if user is not present on the list (or doesn't have username) the message won't be handled

`blacklist`: if user is present on the list the message won't be handled

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  telegram_bot:
    github: mamantoha/telegram_bot
```

## Contributing

__Contributing is very welcomed!__

1. Fork it ( https://github.com/mamantoha/TelegramBot/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [hangyas](https://github.com/hangyas) Krisztián Ádám - creator, maintainer
- [mamantoha](https://github.com/mamantoha) Anton Maminov - maintainer
