module TelegramBot
  class InputLocationMessageContent < InputMessageContent
    include JSON::Serializable

    property latitude : Float64
    property longitude : Float64
    # Period in seconds for which the location can be updated, should be between 60 and 86400.
    property live_period : String

    def initialize(@latitude : Float64, @longitude : Float64, @live_period = nil)
    end
  end
end
