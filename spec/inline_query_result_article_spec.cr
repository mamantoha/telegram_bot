require "./spec_helper"

describe TelegramBot::InlineQueryResultArticle do
  it "it's type is \"article\"" do
    input_text_message_content = TelegramBot::InputTextMessageContent.new(message_text: "text")
    inline_query_result_article = TelegramBot::InlineQueryResultArticle.new(
      id: "id",
      title: "title",
      input_message_content: input_text_message_content,
      thumb_width: 64,
      thumb_height: 64
    )

    inline_query_result_article.type.should eq("article")
    inline_query_result_article.title.should eq("title")
    inline_query_result_article.thumb_width.should eq(64)
    inline_query_result_article.thumb_height.should eq(64)
  end
end
