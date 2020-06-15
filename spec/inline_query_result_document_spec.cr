require "./spec_helper"

describe TelegramBot::InlineQueryResultDocument do
  it "it's type is \"document\"" do
    inlineQueryResultAudio = TelegramBot::InlineQueryResultDocument.new("", "", document_url: "", mime_type: "text")

    inlineQueryResultAudio.type.should eq("document")
    inlineQueryResultAudio.mime_type.should eq("text")
  end
end
