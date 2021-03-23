module TelegramBot
  class InputMediaPhoto < InputMedia
    include JSON::Serializable

    property type : String
    property media : String
    property caption : String?
    property parse_mode : String?
  end
end
