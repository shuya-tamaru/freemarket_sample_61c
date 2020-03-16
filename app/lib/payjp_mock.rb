module PayjpMock
  def self.prepare_charge
    {
      "amount": 3500,
      "amount_refunded": 0,
      "captured": true,
      "captured_at": 1433128911,
      "card": {
        "address_city": null,
        "address_line1": null,
        "address_line2": null,
        "address_state": null,
        "address_zip": null,
        "address_zip_check": "unchecked",
        "brand": "Visa",
        "country": null,
        "created": 1583375140,
        "customer": null,
        "cvc_check": "passed",
        "exp_month": 2,
        "exp_year": 2024,
        "fingerprint": "e1d8225886e3a7211127df751c86787f",
        "id": "car_6845da1a8651f889bc432362dfcb",
        "last4": "4242",
        "livemode": false,
        "metadata": {},
        "name": null,
        "object": "card"
      },
      "created": 1433127983,
      "currency": "jpy",
      "customer": null,
      "description": null,
      "expired_at": 1433429999,
      "failure_code": null,
      "failure_message": null,
      "id": "ch_cce2fce62e9cb5632b3d38b0b1621",
      "livemode": false,
      "metadata": null,
      "object": "charge",
      "paid": true,
      "refund_reason": null,
      "refunded": false,
      "subscription": null
    }
    #引用：支払い処理を確定した時のレスポンスを表示：https://pay.jp/docs/api/#%E6%94%AF%E6%89%95%E3%81%84%E5%87%A6%E7%90%86%E3%82%92%E7%A2%BA%E5%AE%9A%E3%81%99%E3%82%8B
  end

  def self.prepare_customer
    {
      "cards": {
        "count": 1,
        "data": [
          {
            "address_city": null,
            "address_line1": null,
            "address_line2": null,
            "address_state": null,
            "address_zip": null,
            "address_zip_check": "unchecked",
            "brand": "Visa",
            "country": null,
            "created": 1583375140,
            "customer": null,
            "cvc_check": "passed",
            "exp_month": 2,
            "exp_year": 2024,
            "fingerprint": "e1d8225886e3a7211127df751c86787f",
            "id": "car_6845da1a8651f889bc432362dfcb",
            "last4": "4242",
            "livemode": false,
            "metadata": {},
            "name": null,
            "object": "card"
            #引用：顧客のカードリストを取得：https://pay.jp/docs/api/#%E9%A1%A7%E5%AE%A2%E3%81%AE%E3%82%AB%E3%83%BC%E3%83%89%E3%83%AA%E3%82%B9%E3%83%88%E3%82%92%E5%8F%96%E5%BE%97
          }
        ],
        "has_more": false,
        "object": "list",
        "url": "/v1/customers/cus_121673955bd7aa144de5a8f6c262/cards"
      },
      "created": 1433127983,
      "default_card": null,
      "description": "test",
      "email": null,
      "id": "cus_121673955bd7aa144de5a8f6c262",
      "livemode": false,
      "metadata": null,
      "object": "customer",
      "subscriptions": {
        "count": 0,
        "data": [],
        "has_more": false,
        "object": "list",
        "url": "/v1/customers/cus_121673955bd7aa144de5a8f6c262/subscriptions"
      } #引用：顧客情報を取得：https://pay.jp/docs/api/#%E9%A1%A7%E5%AE%A2%E6%83%85%E5%A0%B1%E3%82%92%E5%8F%96%E5%BE%97
    }
  end
end