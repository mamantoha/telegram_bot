module TelegramBot
  class InlineQueryResultCachedGif < InlineQueryResult
    include JSON::Serializable

    property type : String = "gif"
    property id : String
    property gif_file_id : String
    property title : String?
    property caption : String?
    property reply_markup : InlineKeyboardMarkup?
    property input_message_content : InputMessageContent?

    def initialize(
      @id : String,
      @gif_file_id : String,
      *,
      @title = nil,
      @caption = nil,
      @reply_markup = nil,
      @input_message_content = nil
    )
    end
  end
end
