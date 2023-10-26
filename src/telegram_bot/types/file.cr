module TelegramBot
  class File
    include JSON::Serializable

    property file_id : String
    property file_size : Int32?
    property file_path : String?
  end
end
