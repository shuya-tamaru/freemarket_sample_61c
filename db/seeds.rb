Brand.create(
  [
#ブランド仮置き
    {
      name: "シャネル",
    },
    {
      name: "ナイキ",
    },
    {
      name: "ルイ　ヴィトン",
    },
    {
      name: "シュプリーム",
    },
    {
      name: "アディダス",
    }
    ]
  )

#ユーザー
User.create(
  [
    #ユーザー１
    {
      nickname:       "buyer",
      last_name:      "安倍",
      first_name:     "晋三",
      last_name_kana: "アベ",
      first_name_kana:"シンゾウ",
      birthday_year:  1960,
      birthday_month: 10,
      birthday_date:  31,
      email:          "aaa@aaa",
      password:       "abcd123",
    },
    #ユーザー２
    {
      nickname:       "saler",
      last_name:      "木村",
      first_name:     "拓哉",
      last_name_kana: "キムラ",
      first_name_kana:"タクヤ",
      birthday_year:  1980,
      birthday_month: 1,
      birthday_date:  12,
      email:          "bbb@bbb",
      password:       "1234abc",
    }
  ]
)

#携帯
Cellphone.create(
  [
    #ユーザー１
    {
      number:  "08011111111" ,
      user_id: 1,
    },
    #ユーザー2
    {
      number:  "08022222222" ,
      user_id: 2,
    }
  ]
)

#アドレス
Address.create(
  [
    #ユーザー１
    {
      zip_code:   1111111,
      prefecture: "北海道",
      city:       "札幌市",
      address:    "渋谷99-99-99",
      building:   "アジアビル",
      phone_tel:  "0333333333",
      user_id:    1,
    },
    #ユーザー2
    {
      zip_code:   2222222,
      prefecture: "岩手県",
      city:       "盛岡市",
      address:    "渋谷77-77-77",
      building:   "アジアビル",
      phone_tel:  "0311111111",
      user_id:    2,
    }
  ]
)

#クレジッド
Card.create(
  [
    #ユーザー１
    {
      number:               1234567890123456,
      validated_date_year:  22,
      validated_date_month: 10,
      security_number:      111,
      user_id:              1,
    },
    #ユーザー2
    {
      number:               1111111111111111,
      validated_date_year:  24,
      validated_date_month: 2,
      security_number:      222,
      user_id:              2,
    }
  ]
)
