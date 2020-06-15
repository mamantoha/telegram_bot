module TelegramBot
  class Animation
    include JSON::Serializable

    property file_id : String
    property thumb : PhotoSize?
    property file_name : String?
    property mime_type : String?
    property type : Int32?
  end
end
