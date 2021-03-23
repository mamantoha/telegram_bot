module TelegramBot
  class LabeledPrice
    include JSON::Serializable

    property label : String
    property amount : Int32
  end
end
