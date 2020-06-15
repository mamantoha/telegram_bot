module TelegramBot
  class Video
    include JSON::Serializable

    property file_id : String
    property file_unique_id : String
    property width : Int32
    property height : Int32
    property duration : Int32
    property thumb : PhotoSize?
    property mime_type : String?
    property file_size : Int32?
  end
end
