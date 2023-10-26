module TelegramBot
  class ChatMember
    include JSON::Serializable

    property user : User
    property status : String
    property until_date : Int64?
    property? can_be_edited : Bool?
    property? can_change_info : Bool?
    property? can_post_messages : Bool?
    property? can_edit_messages : Bool?
    property? can_delete_messages : Bool?
    property? can_invite_users : Bool?
    property? can_restrict_members : Bool?
    property? can_pin_messages : Bool?
    property? can_promote_members : Bool?
    property? can_send_messages : Bool?
    property? can_send_media_messages : Bool?
    property? can_send_other_messages : Bool?
    property? can_add_web_page_previews : Bool?
  end
end
