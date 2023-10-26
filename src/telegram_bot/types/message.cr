module TelegramBot
  class Message
    include JSON::Serializable

    property message_id : Int32
    property from : User?
    property date : Int32
    property chat : Chat
    property forward_from : User?
    property forward_from_chat : Chat?
    property forward_from_message_id : Int32?
    property forward_signature : String?
    property forward_sender_name : String?
    property forward_date : Int32?
    property reply_to_message : Message?
    property via_bot : User?
    property edit_date : Int32?
    property media_group_id : String?
    property author_signature : String?
    property text : String?
    property entities : Array(MessageEntity)?
    property animation : Animation?
    property audio : Audio?
    property document : Document?
    property photo : Array(PhotoSize)?
    property sticker : Sticker?
    property video : Video?
    property video_note : VideoNote?
    property voice : Voice?
    property caption : String?
    property caption_entities : Array(MessageEntity)?
    property contact : Contact?
    property location : Location?
    property venue : Venue?
    property new_chat_members : Array(User)?
    property left_chat_member : User?
    property new_chat_title : String?
    property new_chat_photo : Array(PhotoSize)?
    property? delete_chat_photo : Bool?
    property? group_chat_created : Bool?
    property? group_chat_created : Bool?
    property? supergroup_chat_created : Bool?
    property? channel_chat_created : Bool?
    property migrate_to_chat_id : Int32?
    property migrate_from_chat_id : Int32?
    property pinned_message : Message?
    property invoice : Invoice?
    property successful_payment : SuccessfulPayment?
  end
end
