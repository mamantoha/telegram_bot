module TelegramBot
  class SuccessfulPayment
    include JSON::Serializable

    property currency : String
    property total_amount : Int32
    property invoice_payload : String
    property shipping_option_id : String?
    property order_info : OrderInfo?
    property telegram_payment_charge_id : String
    property provider_payment_charge_id : String
  end
end
