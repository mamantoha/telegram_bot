module TelegramBot
  class Chat
    include JSON::Serializable

    property id : Int64
    property type : String
    property title : String?
    property username : String?
    property first_name : String?
    property last_name : String?
    property? all_members_are_administrators : Bool?
    property photo : ChatPhoto?
    property description : String?
    property invite_link : String?
    property pinned_message : Message?
    property sticker_set_name : String?
    property? can_set_sticker_set : Bool?
  end
end
