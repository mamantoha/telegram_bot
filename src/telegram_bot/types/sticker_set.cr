module TelegramBot
  class StickerSet
    include JSON::Serializable

    property name : String
    property title : String
    property contains_masks : Bool
    property stickers : Array(Sticker)
  end
end
