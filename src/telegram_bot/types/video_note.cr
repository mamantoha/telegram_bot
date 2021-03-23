module TelegramBot
  class VideoNote
    include JSON::Serializable

    property file_id : String
    property file_unique_id : String
    property length : Int32
    property duration : Int32
    property thumb : PhotoSize?
    property file_size : Int32?
  end
end
