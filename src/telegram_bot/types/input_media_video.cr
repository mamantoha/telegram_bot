module TelegramBot
  class InputMediaVideo < InputMedia
    include JSON::Serializable

    property type : String
    property media : String
    property caption : String?
    property parse_mode : String?
    property width : Int32?
    property height : Int32?
    property duration : Int32?
    property? supports_streaming : Bool?
  end
end
