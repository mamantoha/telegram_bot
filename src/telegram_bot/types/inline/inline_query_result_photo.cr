module TelegramBot
  class InlineQueryResultPhoto < InlineQueryResult
    include JSON::Serializable

    property type : String = "photo"
    property id : String
    property photo_url : String
    property thumb_url : String
    property photo_width : Int32?
    property photo_height : Int32?
    property title : String?
    property description : String?
    property caption : String?
    property reply_markup : InlineKeyboardMarkup?
    property input_message_content : InputMessageContent?

    def initialize(
      @id : String,
      @photo_url : String,
      @thumb_url : String,
      *,
      @photo_width = nil,
      @photo_height = nil,
      @title = nil,
      @description = nil,
      @caption = nil,
      @reply_markup = nil,
      @input_message_content = nil
    )
    end
  end
end
