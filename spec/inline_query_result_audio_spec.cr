require "./spec_helper"

describe TelegramBot::InlineQueryResultAudio do
  it "it's type is \"audio\"" do
    inlineQueryResultAudio = TelegramBot::InlineQueryResultAudio.new("", "", "", audio_duration: 45)

    inlineQueryResultAudio.type.should eq("audio")
    inlineQueryResultAudio.title.should eq("")
    inlineQueryResultAudio.audio_duration.should eq(45)
  end
end
