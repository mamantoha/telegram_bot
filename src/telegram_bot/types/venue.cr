module TelegramBot
  class Venue
    include JSON::Serializable

    property location : Location
    property title : String
    property address : String
    property foursquare_id : String?
    property foursquare_type : String?
  end
end
