module TelegramBot
  class InlineKeyboardMarkup
    include JSON::Serializable

    property inline_keyboard : Array(Array(InlineKeyboardButton))

    def initialize
      @inline_keyboard = Array(Array(InlineKeyboardButton)).new
    end

    def initialize(@inline_keyboard : Array(Array(InlineKeyboardButton)))
    end

    def initialize(first_line : Array(InlineKeyboardButton))
      @inline_keyboard = Array(Array(InlineKeyboardButton)).new

      @inline_keyboard << first_line
    end

    def <<(btn : InlineKeyboardButton)
      if inline_keyboard.empty?
        inline_keyboard << Array(InlineKeyboardButton).new
      end
      inline_keyboard[0] << btn
    end

    def <<(btns)
      a = Array.new(btns.size)
      btns.each do |btn|
        a << btn
      end
      inline_keyboard << a
    end
  end
end
