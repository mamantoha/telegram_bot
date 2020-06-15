require "./spec_helper"

describe TelegramBot::InlineQueryResultArticle do
  it "it's type is \"article\"" do
    inputTextMessageContent = TelegramBot::InputTextMessageContent.new(message_text: "text")
    inlineQueryResultArticle = TelegramBot::InlineQueryResultArticle.new(
      id: "id",
      title: "title",
      input_message_content: inputTextMessageContent,
      thumb_width: 64,
      thumb_height: 64
    )

    inlineQueryResultArticle.type.should eq("article")
    inlineQueryResultArticle.title.should eq("title")
    inlineQueryResultArticle.thumb_width.should eq(64)
    inlineQueryResultArticle.thumb_height.should eq(64)
  end
end
