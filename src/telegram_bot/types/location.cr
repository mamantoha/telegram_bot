module TelegramBot
  class Location
    include JSON::Serializable

    property longitude : Float64
    property latitude : Float64
  end
end
