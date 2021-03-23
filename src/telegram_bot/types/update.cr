module TelegramBot
  class Update
    include JSON::Serializable

    property update_id : Int32
    property message : TelegramBot::Message?
    property edited_message : TelegramBot::Message?
    property channel_post : TelegramBot::Message?
    property edited_channel_post : TelegramBot::Message?
    property inline_query : TelegramBot::InlineQuery?
    property chosen_inline_result : TelegramBot::ChosenInlineResult?
    property callback_query : TelegramBot::CallbackQuery?
    property shipping_query : TelegramBot::ShippingQuery?
    property pre_checkout_query : TelegramBot::PreCheckoutQuery?
  end
end
