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
c1 = Category.create(name:"レディース")

c1_1 = c1.children.create(name: "トップス")
c1_2 = c1.children.create(name: "ジャケット/アウター")
c1_3 = c1.children.create(name: "パンツ")
c1_4 = c1.children.create(name: "スカート")
c1_5 = c1.children.create(name: "ワンピース")
c1_6 = c1.children.create(name: "靴")
c1_7 = c1.children.create(name: "ルームウェア/パジャマ")
c1_8 = c1.children.create(name: "レッグウェア")
c1_9 = c1.children.create(name: "帽子")
c1_10 = c1.children.create(name: "バッグ")
c1_11 = c1.children.create(name: "アクセサリー")
c1_12 = c1.children.create(name: "ヘアアクセサリー")
c1_13 = c1.children.create(name: "小物")
c1_14 = c1.children.create(name: "時計")
c1_15 = c1.children.create(name: "ウィッグ/エクステ")
c1_16 = c1.children.create(name: "浴衣/水着")
c1_17 = c1.children.create(name: "スーツ/フォーマル/ドレス")
c1_18 = c1.children.create(name: "マタニティ")
c1_19 = c1.children.create(name: "その他")

c1_1.children.create(name: "Tシャツ/カットソー(半袖/袖なし)")
c1_1.children.create(name: "Tシャツ/カットソー(七分/長袖)")
c1_1.children.create(name: "シャツ/ブラウス(半袖/袖なし)")
c1_1.children.create(name: "シャツ/ブラウス(七分/長袖)")
c1_1.children.create(name: "ポロシャツ")
c1_1.children.create(name: "キャミソール")
c1_1.children.create(name: "タンクトップ")
c1_1.children.create(name: "ホルターネック")
c1_1.children.create(name: "ニット/セーター")
c1_1.children.create(name: "チュニック")
c1_1.children.create(name: "カーディガン/ボレロ")
c1_1.children.create(name: "アンサンブル")
c1_1.children.create(name: "ベスト/ジレ")
c1_1.children.create(name: "パーカー")
c1_1.children.create(name: "トレーナー/スウェット")
c1_1.children.create(name: "ベアトップ/チューブトップ")
c1_1.children.create(name: "ジャージ")
c1_1.children.create(name: "その他")

c1_2.children.create(name: "テーラードジャケット")
c1_2.children.create(name: "ノーカラージャケット")
c1_2.children.create(name: "Gジャン/デニムジャケット")
c1_2.children.create(name: "レザージャケット")
c1_2.children.create(name: "ダウンジャケット")
c1_2.children.create(name: "ライダースジャケット")
c1_2.children.create(name: "ミリタリージャケット")
c1_2.children.create(name: "ダウンベスト")
c1_2.children.create(name: "ジャンパー/ブルゾン")
c1_2.children.create(name: "ポンチョ")
c1_2.children.create(name: "ロングコート")
c1_2.children.create(name: "トレンチコート")
c1_2.children.create(name: "ダッフルコート")
c1_2.children.create(name: "ピーコート")
c1_2.children.create(name: "チェスターコート")
c1_2.children.create(name: "モッズコート")
c1_2.children.create(name: "スタジャン")
c1_2.children.create(name: "毛皮/ファーコート")
c1_2.children.create(name: "スプリングコート")
c1_2.children.create(name: "スカジャン")
c1_2.children.create(name: "その他")

c1_3.children.create(name: "デニム/ジーンズ")
c1_3.children.create(name: "ショートパンツ")
c1_3.children.create(name: "カジュアルパンツ")
c1_3.children.create(name: "ハーフパンツ")
c1_3.children.create(name: "チノパン")
c1_3.children.create(name: "ワークパンツ/カーゴパンツ")
c1_3.children.create(name: "クロップドパンツ")
c1_3.children.create(name: "サロペット/オーバーオール")
c1_3.children.create(name: "オールインワン")
c1_3.children.create(name: "サルエルパンツ")
c1_3.children.create(name: "ガウチョパンツ")
c1_3.children.create(name: "その他")

c1_4.children.create(name: "ミニスカート")
c1_4.children.create(name: "ひざ丈スカート")
c1_4.children.create(name: "ロングスカート")
c1_4.children.create(name: "キュロット")
c1_4.children.create(name: "その他")

c1_5.children.create(name: "ミニワンピース")
c1_5.children.create(name: "ひざ丈ワンピース")
c1_5.children.create(name: "ロングワンピース")
c1_5.children.create(name: "その他")

c1_6.children.create(name: "ハイヒール/パンプス")
c1_6.children.create(name: "ブーツ")
c1_6.children.create(name: "サンダル")
c1_6.children.create(name: "スニーカー")
c1_6.children.create(name: "ミュール")
c1_6.children.create(name: "モカシン")
c1_6.children.create(name: "ローファー/革靴")
c1_6.children.create(name: "フラットシューズ/バレエシューズ")
c1_6.children.create(name: "長靴/レインシューズ")
c1_6.children.create(name: "その他")

c1_7.children.create(name: "パジャマ")
c1_7.children.create(name: "ルームウェア")

c1_8.children.create(name: "ソックス")
c1_8.children.create(name: "スパッツ/レギンス")
c1_8.children.create(name: "ストッキング/タイツ")
c1_8.children.create(name: "レッグウォーマー")
c1_8.children.create(name: "その他")

c1_9.children.create(name: "ニットキャップ/ビーニー")
c1_9.children.create(name: "ハット")
c1_9.children.create(name: "ハンチング/ベレー帽")
c1_9.children.create(name: "キャップ")
c1_9.children.create(name: "キャスケット")
c1_9.children.create(name: "麦わら帽子")
c1_9.children.create(name: "その他")

c1_10.children.create(name: "ハンドバッグ")
c1_10.children.create(name: "トートバッグ")
c1_10.children.create(name: "エコバッグ")
c1_10.children.create(name: "リュック/バックパック")
c1_10.children.create(name: "ボストンバッグ")
c1_10.children.create(name: "スポーツバッグ")
c1_10.children.create(name: "ショルダーバッグ")
c1_10.children.create(name: "クラッチバッグ")
c1_10.children.create(name: "ポーチ/バニティ")
c1_10.children.create(name: "ボディバッグ/ウェストバッグ")
c1_10.children.create(name: "マザーズバッグ")
c1_10.children.create(name: "メッセンジャーバッグ")
c1_10.children.create(name: "ビジネスバッグ")
c1_10.children.create(name: "旅行用バッグ/キャリーバッグ")
c1_10.children.create(name: "ショップ袋")
c1_10.children.create(name: "和装用バッグ")
c1_10.children.create(name: "かごバッグ")
c1_10.children.create(name: "その他")

c1_11.children.create(name: "ネックレス")
c1_11.children.create(name: "ブレスレット")
c1_11.children.create(name: "バングル/リストバンド")
c1_11.children.create(name: "リング")
c1_11.children.create(name: "ピアス(片耳用)")
c1_11.children.create(name: "ピアス(両耳用)")
c1_11.children.create(name: "イヤリング")
c1_11.children.create(name: "アンクレット")
c1_11.children.create(name: "ブローチ/コサージュ")
c1_11.children.create(name: "チャーム")
c1_11.children.create(name: "その他")

c1_12.children.create(name: "ヘアゴム/シュシュ")
c1_12.children.create(name: "ヘアバンド/カチューシャ")
c1_12.children.create(name: "ヘアピン")
c1_12.children.create(name: "その他")

c1_13.children.create(name: "長財布")
c1_13.children.create(name: "折り財布")
c1_13.children.create(name: "コインケース/小銭入れ")
c1_13.children.create(name: "名刺入れ/定期入れ")
c1_13.children.create(name: "キーケース")
c1_13.children.create(name: "キーホルダー")
c1_13.children.create(name: "手袋/アームカバー")
c1_13.children.create(name: "ハンカチ")
c1_13.children.create(name: "ベルト")
c1_13.children.create(name: "マフラー/ショール")
c1_13.children.create(name: "ストール/スヌード")
c1_13.children.create(name: "バンダナ/スカーフ")
c1_13.children.create(name: "ネックウォーマー")
c1_13.children.create(name: "サスペンダー")
c1_13.children.create(name: "サングラス/メガネ")
c1_13.children.create(name: "モバイルケース/カバー")
c1_13.children.create(name: "手帳")
c1_13.children.create(name: "イヤマフラー")
c1_13.children.create(name: "傘")
c1_13.children.create(name: "レインコート/ポンチョ")
c1_13.children.create(name: "ミラー")
c1_13.children.create(name: "タバコグッズ")
c1_13.children.create(name: "その他")

c1_14.children.create(name: "腕時計(アナログ)")
c1_14.children.create(name: "腕時計(デジタル)")
c1_14.children.create(name: "ラバーベルト")
c1_14.children.create(name: "レザーベルト")
c1_14.children.create(name: "金属ベルト")
c1_14.children.create(name: "その他")

c1_15.children.create(name: "前髪ウィッグ")
c1_15.children.create(name: "ロングストレート")
c1_15.children.create(name: "ロングカール")
c1_15.children.create(name: "ショートストレート")
c1_15.children.create(name: "ショートカール")
c1_15.children.create(name: "その他")

c1_16.children.create(name: "浴衣")
c1_16.children.create(name: "着物")
c1_16.children.create(name: "振袖")
c1_16.children.create(name: "長襦袢/半襦袢")
c1_16.children.create(name: "水着セパレート")
c1_16.children.create(name: "水着ワンピース")
c1_16.children.create(name: "水着スポーツ用")
c1_16.children.create(name: "その他")

c1_17.children.create(name: "スカートスーツ上下")
c1_17.children.create(name: "パンツスーツ上下")
c1_17.children.create(name: "ドレス")
c1_17.children.create(name: "パーティーバッグ")
c1_17.children.create(name: "シューズ")
c1_17.children.create(name: "ウェディング")
c1_17.children.create(name: "その他")

c1_18.children.create(name: "トップス")
c1_18.children.create(name: "アウター")
c1_18.children.create(name: "インナー")
c1_18.children.create(name: "ワンピース")
c1_18.children.create(name: "パンツ/スパッツ")
c1_18.children.create(name: "スカート")
c1_18.children.create(name: "パジャマ")
c1_18.children.create(name: "授乳服")
c1_18.children.create(name: "その他")

c1_19.children.create(name: "コスプレ")
c1_19.children.create(name: "下着")
c1_19.children.create(name: "その他")


c2 = Category.create(name:"メンズ")

c2_1 = c2.children.create(name: "トップス")

c2_1.children.create(name: "Tシャツ/カットソー(半袖/袖なし)")
c2_1.children.create(name: "Tシャツ/カットソー(七分/長袖)")
c2_1.children.create(name: "シャツ")
c2_1.children.create(name: "ポロシャツ")
c2_1.children.create(name: "タンクトップ")
c2_1.children.create(name: "ニット/セーター")
c2_1.children.create(name: "パーカー")
c2_1.children.create(name: "カーディガン")
c2_1.children.create(name: "スウェット")
c2_1.children.create(name: "ジャージ")
c2_1.children.create(name: "ベスト")
c2_1.children.create(name: "その他")

c2_2 = c2.children.create(name: "ジャケット/アウター")

c2_2.children.create(name: "テーラードジャケット")
c2_2.children.create(name: "ノーカラージャケット")
c2_2.children.create(name: "Gジャン/デニムジャケット")
c2_2.children.create(name: "レザージャケット")
c2_2.children.create(name: "ダウンジャケット")
c2_2.children.create(name: "ライダースジャケット")
c2_2.children.create(name: "ミリタリージャケット")
c2_2.children.create(name: "ナイロンジャケット")
c2_2.children.create(name: "フライトジャケット")
c2_2.children.create(name: "ダッフルコート")
c2_2.children.create(name: "ピーコート")
c2_2.children.create(name: "ステンカラーコート")
c2_2.children.create(name: "トレンチコート")
c2_2.children.create(name: "モッズコート")
c2_2.children.create(name: "チェスターコート")
c2_2.children.create(name: "スタジャン")
c2_2.children.create(name: "スカジャン")
c2_2.children.create(name: "ブルゾン")
c2_2.children.create(name: "マウンテンパーカー")
c2_2.children.create(name: "ダウンベスト")
c2_2.children.create(name: "ポンチョ")
c2_2.children.create(name: "カバーオール")
c2_2.children.create(name: "その他")

c2_3 = c2.children.create(name: "パンツ")

c2_3.children.create(name: "デニム/ジーンズ")
c2_3.children.create(name: "ワークパンツ/カーゴパンツ")
c2_3.children.create(name: "スラックス")
c2_3.children.create(name: "チノパン")
c2_3.children.create(name: "ショートパンツ")
c2_3.children.create(name: "ペインターパンツ")
c2_3.children.create(name: "サルエルパンツ")
c2_3.children.create(name: "オーバーオール")
c2_3.children.create(name: "その他")

c2_4 = c2.children.create(name: "靴")

c2_4.children.create(name: "スニーカー")
c2_4.children.create(name: "サンダル")
c2_4.children.create(name: "ブーツ")
c2_4.children.create(name: "モカシン")
c2_4.children.create(name: "ドレス/ビジネス")
c2_4.children.create(name: "長靴/レインシューズ")
c2_4.children.create(name: "デッキシューズ")
c2_4.children.create(name: "その他")

c2_5 = c2.children.create(name: "バッグ")

c2_5.children.create(name: "ショルダーバッグ")
c2_5.children.create(name: "トートバッグ")
c2_5.children.create(name: "ボストンバッグ")
c2_5.children.create(name: "リュック/バックパック")
c2_5.children.create(name: "ウエストポーチ")
c2_5.children.create(name: "ボディーバッグ")
c2_5.children.create(name: "ドラムバッグ")
c2_5.children.create(name: "ビジネスバッグ")
c2_5.children.create(name: "トラベルバッグ")
c2_5.children.create(name: "メッセンジャーバッグ")
c2_5.children.create(name: "エコバッグ")
c2_5.children.create(name: "その他")

c2_6 = c2.children.create(name: "スーツ")

c2_6.children.create(name: "スーツジャケット")
c2_6.children.create(name: "スーツベスト")
c2_6.children.create(name: "スラックス")
c2_6.children.create(name: "セットアップ")
c2_6.children.create(name: "その他")

c2_7 = c2.children.create(name: "帽子")

c2_7.children.create(name: "キャップ")
c2_7.children.create(name: "ハット")
c2_7.children.create(name: "ニットキャップ/ビーニー")
c2_7.children.create(name: "ハンチング/ベレー帽")
c2_7.children.create(name: "キャスケット")
c2_7.children.create(name: "サンバイザー")
c2_7.children.create(name: "その他")

c2_8 = c2.children.create(name: "アクセサリー")

c2_8.children.create(name: "ネックレス")
c2_8.children.create(name: "ブレスレット")
c2_8.children.create(name: "バングル/リストバンド")
c2_8.children.create(name: "リング")
c2_8.children.create(name: "ピアス(片耳用)")
c2_8.children.create(name: "ピアス(両耳用)")
c2_8.children.create(name: "アンクレット")
c2_8.children.create(name: "その他")

c2_9 = c2.children.create(name: "小物")

c2_9.children.create(name: "長財布")
c2_9.children.create(name: "折り財布")
c2_9.children.create(name: "マネークリップ")
c2_9.children.create(name: "コインケース/小銭入れ")
c2_9.children.create(name: "名刺入れ/定期入れ")
c2_9.children.create(name: "キーケース")
c2_9.children.create(name: "キーホルダー")
c2_9.children.create(name: "ネクタイ")
c2_9.children.create(name: "手袋")
c2_9.children.create(name: "ハンカチ")
c2_9.children.create(name: "ベルト")
c2_9.children.create(name: "マフラー")
c2_9.children.create(name: "ストール")
c2_9.children.create(name: "バンダナ")
c2_9.children.create(name: "ネックウォーマー")
c2_9.children.create(name: "サスペンダー")
c2_9.children.create(name: "ウォレットチェーン")
c2_9.children.create(name: "サングラス/メガネ")
c2_9.children.create(name: "モバイルケース/カバー")
c2_9.children.create(name: "手帳")
c2_9.children.create(name: "ストラップ")
c2_9.children.create(name: "ネクタイピン")
c2_9.children.create(name: "カフリンクス")
c2_9.children.create(name: "イヤマフラー")
c2_9.children.create(name: "傘")
c2_9.children.create(name: "レインコート")
c2_9.children.create(name: "ミラー")
c2_9.children.create(name: "タバコグッズ")
c2_9.children.create(name: "その他")

c2_10 = c2.children.create(name: "時計")

c2_10.children.create(name: "腕時計(アナログ)")
c2_10.children.create(name: "腕時計(デジタル)")
c2_10.children.create(name: "ラバーベルト")
c2_10.children.create(name: "レザーベルト")
c2_10.children.create(name: "金属ベルト")
c2_10.children.create(name: "その他")

c2_11 = c2.children.create(name: "水着")

c2_11.children.create(name: "一般水着")
c2_11.children.create(name: "スポーツ用")
c2_11.children.create(name: "アクセサリー")
c2_11.children.create(name: "その他")

c2_12 = c2.children.create(name: "レッグウェア")

c2_12.children.create(name: "ソックス")
c2_12.children.create(name: "レギンス/スパッツ")
c2_12.children.create(name: "レッグウォーマー")
c2_12.children.create(name: "その他")

c2_13 = c2.children.create(name: "アンダーウェア")

c2_13.children.create(name: "トランクス")
c2_13.children.create(name: "ボクサーパンツ")
c2_13.children.create(name: "その他")

c2_14 = c2.children.create(name: "その他")


c3 = Category.create(name: "ベビー・キッズ")

c3_1 = c3.children.create(name: "ベビー服(女の子用) ~95cm")

c3_1.children.create(name: "トップス")
c3_1.children.create(name: "アウター")
c3_1.children.create(name: "パンツ")
c3_1.children.create(name: "スカート")
c3_1.children.create(name: "ワンピース")
c3_1.children.create(name: "ベビードレス")
c3_1.children.create(name: "おくるみ")
c3_1.children.create(name: "下着/肌着")
c3_1.children.create(name: "パジャマ")
c3_1.children.create(name: "ロンパース")
c3_1.children.create(name: "その他")

c3_2 = c3.children.create(name: "ベビー服(男の子用) ~95cm")

c3_2.children.create(name: "トップス")
c3_2.children.create(name: "アウター")
c3_2.children.create(name: "パンツ")
c3_2.children.create(name: "おくるみ")
c3_2.children.create(name: "下着/肌着")
c3_2.children.create(name: "パジャマ")
c3_2.children.create(name: "ロンパース")
c3_2.children.create(name: "その他")

c3_3 = c3.children.create(name: "ベビー服(男女兼用) ~95cm")

c3_3.children.create(name: "トップス")
c3_3.children.create(name: "アウター")
c3_3.children.create(name: "パンツ")
c3_3.children.create(name: "おくるみ")
c3_3.children.create(name: "下着/肌着")
c3_3.children.create(name: "パジャマ")
c3_3.children.create(name: "ロンパース")
c3_3.children.create(name: "その他")

c3_4 = c3.children.create(name: "キッズ服(女の子用) 100cm~")

c3_4.children.create(name: "コート")
c3_4.children.create(name: "ジャケット/上着")
c3_4.children.create(name: "トップス(Tシャツ/カットソー)")
c3_4.children.create(name: "トップス(トレーナー)")
c3_4.children.create(name: "トップス(チュニック)")
c3_4.children.create(name: "トップス(タンクトップ)")
c3_4.children.create(name: "トップス(その他)")
c3_4.children.create(name: "スカート")
c3_4.children.create(name: "パンツ")
c3_4.children.create(name: "ワンピース")
c3_4.children.create(name: "セットアップ")
c3_4.children.create(name: "パジャマ")
c3_4.children.create(name: "フォーマル/ドレス")
c3_4.children.create(name: "和服")
c3_4.children.create(name: "浴衣")
c3_4.children.create(name: "甚平")
c3_4.children.create(name: "水着")
c3_4.children.create(name: "その他")

c3_5 = c3.children.create(name: "キッズ服(男の子用) 100cm~")

c3_5.children.create(name: "コート")
c3_5.children.create(name: "ジャケット/上着")
c3_5.children.create(name: "トップス(Tシャツ/カットソー)")
c3_5.children.create(name: "トップス(トレーナー)")
c3_5.children.create(name: "トップス(その他)")
c3_5.children.create(name: "パンツ")
c3_5.children.create(name: "セットアップ")
c3_5.children.create(name: "パジャマ")
c3_5.children.create(name: "フォーマル/ドレス")
c3_5.children.create(name: "和服")
c3_5.children.create(name: "浴衣")
c3_5.children.create(name: "甚平")
c3_5.children.create(name: "水着")
c3_5.children.create(name: "その他")

c3_6 = c3.children.create(name: "キッズ服(男女兼用) 100cm~")

c3_6.children.create(name: "コート")
c3_6.children.create(name: "ジャケット/上着")
c3_6.children.create(name: "トップス(Tシャツ/カットソー)")
c3_6.children.create(name: "トップス(トレーナー)")
c3_6.children.create(name: "トップス(その他)")
c3_6.children.create(name: "ボトムス")
c3_6.children.create(name: "パジャマ")
c3_6.children.create(name: "その他")

c3_7 = c3.children.create(name: "キッズ靴")

c3_7.children.create(name: "スニーカー")
c3_7.children.create(name: "サンダル")
c3_7.children.create(name: "ブーツ")
c3_7.children.create(name: "長靴")
c3_7.children.create(name: "その他")

c3_8 = c3.children.create(name: "子ども用ファッション小物")

c3_8.children.create(name: "靴下/スパッツ")
c3_8.children.create(name: "帽子")
c3_8.children.create(name: "エプロン")
c3_8.children.create(name: "サスペンダー")
c3_8.children.create(name: "タイツ")
c3_8.children.create(name: "ハンカチ")
c3_8.children.create(name: "バンダナ")
c3_8.children.create(name: "ベルト")
c3_8.children.create(name: "マフラー")
c3_8.children.create(name: "傘")
c3_8.children.create(name: "手袋")
c3_8.children.create(name: "スタイ")
c3_8.children.create(name: "バッグ")
c3_8.children.create(name: "その他")

c3_9 = c3.children.create(name: "おむつ/トイレ/バス")

c3_9.children.create(name: "おむつ用品")
c3_9.children.create(name: "おまる/補助便座")
c3_9.children.create(name: "トレーニングパンツ")
c3_9.children.create(name: "ベビーバス")
c3_9.children.create(name: "お風呂用品")
c3_9.children.create(name: "その他")

c3_10 = c3.children.create(name: "外出/移動用品")

c3_10.children.create(name: "ベビーカー")
c3_10.children.create(name: "抱っこひも/スリング")
c3_10.children.create(name: "チャイルドシート")
c3_10.children.create(name: "その他")

c3_11 = c3.children.create(name: "授乳/食事")

c3_11.children.create(name: "ミルク")
c3_11.children.create(name: "ベビーフード")
c3_11.children.create(name: "ベビー用食器")
c3_11.children.create(name: "その他")

c3_12 = c3.children.create(name: "ベビー家具/寝具/室内用品")

c3_12.children.create(name: "ベッド")
c3_12.children.create(name: "布団/毛布")
c3_12.children.create(name: "イス")
c3_12.children.create(name: "たんす")
c3_12.children.create(name: "その他")

c3_13 = c3.children.create(name: "おもちゃ")

c3_13.children.create(name: "おふろのおもちゃ")
c3_13.children.create(name: "がらがら")
c3_13.children.create(name: "オルゴール")
c3_13.children.create(name: "ベビージム")
c3_13.children.create(name: "手押し車/カタカタ")
c3_13.children.create(name: "知育玩具")
c3_13.children.create(name: "その他")

c3_14 = c3.children.create(name: "行事/記念品")

c3_14.children.create(name: "お宮参り用品")
c3_14.children.create(name: "お食い初め用品")
c3_14.children.create(name: "アルバム")
c3_14.children.create(name: "手形/足形")
c3_14.children.create(name: "その他")

c3_15 = c3.children.create(name: "その他")

c3_15.children.create(name: "母子手帳用品")
c3_15.children.create(name: "その他")


c4 = Category.create(name: "インテリア・住まい・小物")

c4_1 = c4.children.create(name: "キッチン/食器")

c4_1.children.create(name: "食器")
c4_1.children.create(name: "調理器具")
c4_1.children.create(name: "収納/キッチン雑貨")
c4_1.children.create(name: "弁当用品")
c4_1.children.create(name: "カトラリー(スプーン等)")
c4_1.children.create(name: "テーブル用品")
c4_1.children.create(name: "容器")
c4_1.children.create(name: "エプロン")
c4_1.children.create(name: "アルコールグッズ")
c4_1.children.create(name: "浄水機")
c4_1.children.create(name: "その他")

c4_2 = c4.children.create(name: "ベッド/マットレス")

c4_2.children.create(name: "セミシングルベッド")
c4_2.children.create(name: "シングルベッド")
c4_2.children.create(name: "セミダブルベッド")
c4_2.children.create(name: "ダブルベッド")
c4_2.children.create(name: "ワイドダブルベッド")
c4_2.children.create(name: "クイーンベッド")
c4_2.children.create(name: "キングベッド")
c4_2.children.create(name: "脚付きマットレスベッド")
c4_2.children.create(name: "マットレス")
c4_2.children.create(name: "すのこベッド")
c4_2.children.create(name: "ロフトベッド/システムベッド")
c4_2.children.create(name: "簡易ベッド/折りたたみベッド")
c4_2.children.create(name: "収納付き")
c4_2.children.create(name: "その他")

c4_3 = c4.children.create(name: "ソファ/ソファベッド")

c4_3.children.create(name: "ソファセット")
c4_3.children.create(name: "シングルソファ")
c4_3.children.create(name: "ラブソファ")
c4_3.children.create(name: "トリプルソファ")
c4_3.children.create(name: "オットマン")
c4_3.children.create(name: "コーナーソファ")
c4_3.children.create(name: "ビーズソファ/クッションソファ")
c4_3.children.create(name: "ローソファ/フロアソファ")
c4_3.children.create(name: "ソファベッド")
c4_3.children.create(name: "応接セット")
c4_3.children.create(name: "ソファカバー")
c4_3.children.create(name: "リクライニングソファ")
c4_3.children.create(name: "その他")

c4_4 = c4.children.create(name: "椅子/チェア")

c4_4.children.create(name: "一般")
c4_4.children.create(name: "スツール")
c4_4.children.create(name: "ダイニングチェア")
c4_4.children.create(name: "ハイバックチェア")
c4_4.children.create(name: "ロッキングチェア")
c4_4.children.create(name: "座椅子")
c4_4.children.create(name: "折り畳みイス")
c4_4.children.create(name: "デスクチェア")
c4_4.children.create(name: "その他")

c4_5 = c4.children.create(name: "机/テーブル")

c4_5.children.create(name: "こたつ")
c4_5.children.create(name: "カウンターテーブル")
c4_5.children.create(name: "サイドテーブル")
c4_5.children.create(name: "センターテーブル")
c4_5.children.create(name: "ダイニングテーブル")
c4_5.children.create(name: "座卓/ちゃぶ台")
c4_5.children.create(name: "アウトドア用")
c4_5.children.create(name: "パソコン用")
c4_5.children.create(name: "事務机/学習机")
c4_5.children.create(name: "その他")

c4_6 = c4.children.create(name: "収納家具")

c4_6.children.create(name: "リビング収納")
c4_6.children.create(name: "キッチン収納")
c4_6.children.create(name: "玄関/屋外収納")
c4_6.children.create(name: "バス/トイレ収納")
c4_6.children.create(name: "本収納")
c4_6.children.create(name: "本/CD/DVD収納")
c4_6.children.create(name: "洋服タンス/押入れ収納")
c4_6.children.create(name: "電話台/ファックス台")
c4_6.children.create(name: "ドレッサー/鏡台")
c4_6.children.create(name: "棚/ラック")
c4_6.children.create(name: "ケース/ボックス")
c4_6.children.create(name: "その他")

c4_7 = c4.children.create(name: "ラグ/カーペット/マット")

c4_7.children.create(name: "ラグ")
c4_7.children.create(name: "カーペット")
c4_7.children.create(name: "ホットカーペット")
c4_7.children.create(name: "玄関/キッチンマット")
c4_7.children.create(name: "トイレ/バスマット")
c4_7.children.create(name: "その他")

c4_8 = c4.children.create(name: "カーテン/ブラインド")

c4_8.children.create(name: "カーテン")
c4_8.children.create(name: "ブラインド")
c4_8.children.create(name: "ロールスクリーン")
c4_8.children.create(name: "のれん")
c4_8.children.create(name: "その他")

c4_9 = c4.children.create(name: "ライト/照明")

c4_9.children.create(name: "蛍光灯/電球")
c4_9.children.create(name: "天井照明")
c4_9.children.create(name: "フロアスタンド")
c4_9.children.create(name: "その他")

c4_10 = c4.children.create(name: "寝具")

c4_10.children.create(name: "布団/毛布")
c4_10.children.create(name: "枕")
c4_10.children.create(name: "シーツ/カバー")
c4_10.children.create(name: "その他")

c4_11 = c4.children.create(name: "インテリア小物")

c4_11.children.create(name: "ごみ箱")
c4_11.children.create(name: "ウェルカムボード")
c4_11.children.create(name: "オルゴール")
c4_11.children.create(name: "クッション")
c4_11.children.create(name: "クッションカバー")
c4_11.children.create(name: "スリッパラック")
c4_11.children.create(name: "ティッシュボックス")
c4_11.children.create(name: "バスケット/かご")
c4_11.children.create(name: "フォトフレーム")
c4_11.children.create(name: "マガジンラック")
c4_11.children.create(name: "モビール")
c4_11.children.create(name: "花瓶")
c4_11.children.create(name: "灰皿")
c4_11.children.create(name: "傘立て")
c4_11.children.create(name: "小物入れ")
c4_11.children.create(name: "置時計")
c4_11.children.create(name: "掛時計/柱時計")
c4_11.children.create(name: "鏡(立て掛け式)")
c4_11.children.create(name: "鏡(壁掛け式)")
c4_11.children.create(name: "置物")
c4_11.children.create(name: "風鈴")
c4_11.children.create(name: "植物/観葉植物")
c4_11.children.create(name: "その他")

c4_12 = c4.children.create(name: "季節/年中行事")

c4_12.children.create(name: "正月")
c4_12.children.create(name: "成人式")
c4_12.children.create(name: "バレンタインデー")
c4_12.children.create(name: "ひな祭り")
c4_12.children.create(name: "子どもの日")
c4_12.children.create(name: "母の日")
c4_12.children.create(name: "父の日")
c4_12.children.create(name: "サマーギフト/お中元")
c4_12.children.create(name: "夏/夏休み")
c4_12.children.create(name: "ハロウィン")
c4_12.children.create(name: "敬老の日")
c4_12.children.create(name: "七五三")
c4_12.children.create(name: "お歳暮")
c4_12.children.create(name: "クリスマス")
c4_12.children.create(name: "冬一般")
c4_12.children.create(name: "その他")

c4_13 = c4.children.create(name: "その他")


c5 = Category.create(name: "本・音楽・ゲーム")

c5_1 = c5.children.create(name: "本")

c5_1.children.create(name: "文学/小説")
c5_1.children.create(name: "人文/社会")
c5_1.children.create(name: "ノンフィクション/教養")
c5_1.children.create(name: "地図/旅行ガイド")
c5_1.children.create(name: "ビジネス/経済")
c5_1.children.create(name: "健康/医学")
c5_1.children.create(name: "コンピュータ/IT")
c5_1.children.create(name: "趣味/スポーツ/実用")
c5_1.children.create(name: "住まい/暮らし/子育て")
c5_1.children.create(name: "アート/エンタメ")
c5_1.children.create(name: "洋書")
c5_1.children.create(name: "絵本")
c5_1.children.create(name: "参考書")
c5_1.children.create(name: "その他")

c5_2 = c5.children.create(name: "漫画")

c5_2.children.create(name: "全巻セット")
c5_2.children.create(name: "少年漫画")
c5_2.children.create(name: "少女漫画")
c5_2.children.create(name: "青年漫画")
c5_2.children.create(name: "女性漫画")
c5_2.children.create(name: "同人誌")
c5_2.children.create(name: "その他")

c5_3 = c5.children.create(name: "雑誌")

c5_3.children.create(name: "アート/エンタメ/ホビー")
c5_3.children.create(name: "ファッション")
c5_3.children.create(name: "ニュース/総合")
c5_3.children.create(name: "趣味/スポーツ")
c5_3.children.create(name: "その他")

c5_4 = c5.children.create(name: "CD")

c5_4.children.create(name: "邦楽")
c5_4.children.create(name: "洋楽")
c5_4.children.create(name: "アニメ")
c5_4.children.create(name: "クラシック")
c5_4.children.create(name: "K-POP/アジア")
c5_4.children.create(name: "キッズ/ファミリー")
c5_4.children.create(name: "その他")

c5_5 = c5.children.create(name: "DVD/ブルーレイ")

c5_5.children.create(name: "外国映画")
c5_5.children.create(name: "日本映画")
c5_5.children.create(name: "アニメ")
c5_5.children.create(name: "TVドラマ")
c5_5.children.create(name: "ミュージック")
c5_5.children.create(name: "お笑い/バラエティ")
c5_5.children.create(name: "スポーツ/フィットネス")
c5_5.children.create(name: "キッズ/ファミリー")
c5_5.children.create(name: "その他")

c5_6 = c5.children.create(name: "レコード")

c5_6.children.create(name: "邦楽")
c5_6.children.create(name: "洋楽")
c5_6.children.create(name: "その他")

c5_7 = c5.children.create(name: "テレビゲーム")

c5_7.children.create(name: "家庭用ゲーム本体")
c5_7.children.create(name: "家庭用ゲームソフト")
c5_7.children.create(name: "携帯用ゲーム本体")
c5_7.children.create(name: "携帯用ゲームソフト")
c5_7.children.create(name: "PCゲーム")
c5_7.children.create(name: "その他")


c6 = Category.create(name: "おもちゃ・ホビー・グッズ")

c6_1 = c6.children.create(name: "おもちゃ")

c6_1.children.create(name: "キャラクターグッズ")
c6_1.children.create(name: "ぬいぐるみ")
c6_1.children.create(name: "小物/アクセサリー")
c6_1.children.create(name: "模型/プラモデル")
c6_1.children.create(name: "ミニカー")
c6_1.children.create(name: "トイラジコン")
c6_1.children.create(name: "プラモデル")
c6_1.children.create(name: "ホビーラジコン")
c6_1.children.create(name: "鉄道模型")
c6_1.children.create(name: "その他")

c6_2 = c6.children.create(name: "タレントグッズ")

c6_2.children.create(name: "アイドル")
c6_2.children.create(name: "ミュージシャン")
c6_2.children.create(name: "タレント/お笑い芸人")
c6_2.children.create(name: "スポーツ選手")
c6_2.children.create(name: "その他")

c6_3 = c6.children.create(name: "コミック/アニメグッズ")

c6_3.children.create(name: "ストラップ")
c6_3.children.create(name: "キーホルダー")
c6_3.children.create(name: "バッジ")
c6_3.children.create(name: "カード")
c6_3.children.create(name: "クリアファイル")
c6_3.children.create(name: "ポスター")
c6_3.children.create(name: "タオル")
c6_3.children.create(name: "その他")

c6_4 = c6.children.create(name: "トレーディングカード")

c6_4.children.create(name: "遊戯王")
c6_4.children.create(name: "マジック：ザ・ギャザリング")
c6_4.children.create(name: "ポケモンカードゲーム")
c6_4.children.create(name: "デュエルマスターズ")
c6_4.children.create(name: "バトルスピリッツ")
c6_4.children.create(name: "プリパラ")
c6_4.children.create(name: "アイカツ")
c6_4.children.create(name: "カードファイト!! ヴァンガード")
c6_4.children.create(name: "ヴァイスシュヴァルツ")
c6_4.children.create(name: "プロ野球オーナーズリーグ")
c6_4.children.create(name: "ベースボールヒーローズ")
c6_4.children.create(name: "ドラゴンボール")
c6_4.children.create(name: "スリーブ")
c6_4.children.create(name: "その他")

c6_5 = c6.children.create(name: "フィギュア")

c6_5.children.create(name: "コミック/アニメ")
c6_5.children.create(name: "特撮")
c6_5.children.create(name: "ゲームキャラクター")
c6_5.children.create(name: "SF/ファンタジー/ホラー")
c6_5.children.create(name: "アメコミ")
c6_5.children.create(name: "スポーツ")
c6_5.children.create(name: "ミリタリー")
c6_5.children.create(name: "その他")

c6_6 = c6.children.create(name: "楽器/器材")

c6_6.children.create(name: "エレキギター")
c6_6.children.create(name: "アコースティックギター")
c6_6.children.create(name: "ベース")
c6_6.children.create(name: "エフェクター")
c6_6.children.create(name: "アンプ")
c6_6.children.create(name: "弦楽器")
c6_6.children.create(name: "管楽器")
c6_6.children.create(name: "鍵盤楽器")
c6_6.children.create(name: "打楽器")
c6_6.children.create(name: "和楽器")
c6_6.children.create(name: "楽譜/スコア")
c6_6.children.create(name: "レコーディング/PA機器")
c6_6.children.create(name: "DJ機器")
c6_6.children.create(name: "DTM/DAW")
c6_6.children.create(name: "その他")

c6_7 = c6.children.create(name: "コレクション")

c6_7.children.create(name: "武具")
c6_7.children.create(name: "使用済切手/官製はがき")
c6_7.children.create(name: "旧貨幣/金貨/銀貨/記念硬貨")
c6_7.children.create(name: "印刷物")
c6_7.children.create(name: "ノベルティグッズ")
c6_7.children.create(name: "その他")

c6_7 = c6.children.create(name: "ミリタリー")

c6_7.children.create(name: "トイガン")
c6_7.children.create(name: "個人装備")
c6_7.children.create(name: "その他")

c6_8 = c6.children.create(name: "美術品")

c6_8.children.create(name: "陶芸")
c6_8.children.create(name: "ガラス")
c6_8.children.create(name: "漆芸")
c6_8.children.create(name: "金属工芸")
c6_8.children.create(name: "絵画/タペストリ")
c6_8.children.create(name: "版画")
c6_8.children.create(name: "彫刻/オブジェクト")
c6_8.children.create(name: "書")
c6_8.children.create(name: "写真")
c6_8.children.create(name: "その他")

c6_9 = c6.children.create(name: "アート用品")

c6_9.children.create(name: "画材")
c6_9.children.create(name: "額縁")
c6_9.children.create(name: "その他")

c6_10 = c6.children.create(name: "その他")

c6_10.children.create(name: "トランプ/UNO")
c6_10.children.create(name: "カルタ/百人一首")
c6_10.children.create(name: "ダーツ")
c6_10.children.create(name: "ビリヤード")
c6_10.children.create(name: "麻雀")
c6_10.children.create(name: "パズル/ジグソーパズル")
c6_10.children.create(name: "囲碁/将棋")
c6_10.children.create(name: "オセロ/チェス")
c6_10.children.create(name: "人生ゲーム")
c6_10.children.create(name: "野球/サッカーゲーム")
c6_10.children.create(name: "スポーツ")
c6_10.children.create(name: "三輪車/乗り物")
c6_10.children.create(name: "ヨーヨー")
c6_10.children.create(name: "模型製作用品")
c6_10.children.create(name: "鉄道")
c6_10.children.create(name: "航空機")
c6_10.children.create(name: "アマチュア無線")
c6_10.children.create(name: "パチンコ/パチスロ")
c6_10.children.create(name: "その他")


c7 = Category.create(name: "コスメ・香水・美容")

c7_1 = c7.children.create(name: "ベースメイク")

c7_1.children.create(name: "ファンデーション")
c7_1.children.create(name: "化粧下地")
c7_1.children.create(name: "コントロールカラー")
c7_1.children.create(name: "BBクリーム")
c7_1.children.create(name: "CCクリーム")
c7_1.children.create(name: "コンシーラー")
c7_1.children.create(name: "フェイスパウダー")
c7_1.children.create(name: "トライアルセット/サンプル")
c7_1.children.create(name: "その他")

c7_2 = c7.children.create(name: "メイクアップ")

c7_2.children.create(name: "アイシャドウ")
c7_2.children.create(name: "口紅")
c7_2.children.create(name: "リップグロス")
c7_2.children.create(name: "リップライナー")
c7_2.children.create(name: "チーク")
c7_2.children.create(name: "フェイスカラー")
c7_2.children.create(name: "マスカラ")
c7_2.children.create(name: "アイライナー")
c7_2.children.create(name: "つけまつげ")
c7_2.children.create(name: "アイブロウペンシル")
c7_2.children.create(name: "パウダーアイブロウ")
c7_2.children.create(name: "眉マスカラ")
c7_2.children.create(name: "トライアルセット/サンプル")
c7_2.children.create(name: "メイク道具/化粧小物")
c7_2.children.create(name: "美顔用品/美顔ローラー")
c7_2.children.create(name: "その他")

c7_3 = c7.children.create(name: "ネイルケア")

c7_3.children.create(name: "ネイルカラー")
c7_3.children.create(name: "カラージェル")
c7_3.children.create(name: "ネイルベースコート/トップコート")
c7_3.children.create(name: "ネイルアート用品")
c7_3.children.create(name: "ネイルパーツ")
c7_3.children.create(name: "ネイルチップ/付け爪")
c7_3.children.create(name: "手入れ用具")
c7_3.children.create(name: "除光液")
c7_3.children.create(name: "その他")

c7_4 = c7.children.create(name: "香水")

c7_4.children.create(name: "香水(女性用)")
c7_4.children.create(name: "香水(男性用)")
c7_4.children.create(name: "ユニセックス")
c7_4.children.create(name: "ボディミスト")
c7_4.children.create(name: "その他")

c7_5 = c7.children.create(name: "スキンケア/基礎化粧品")

c7_5.children.create(name: "化粧水/ローション")
c7_5.children.create(name: "乳液/ミルク")
c7_5.children.create(name: "美容液")
c7_5.children.create(name: "フェイスクリーム")
c7_5.children.create(name: "洗顔料")
c7_5.children.create(name: "クレンジング/メイク落とし")
c7_5.children.create(name: "パック/フェイスマスク")
c7_5.children.create(name: "ジェル/ゲル")
c7_5.children.create(name: "ブースター/導入液")
c7_5.children.create(name: "アイケア")
c7_5.children.create(name: "リップケア")
c7_5.children.create(name: "トライアルセット/サンプル")
c7_5.children.create(name: "洗顔グッズ")
c7_5.children.create(name: "その他")

c7_6 = c7.children.create(name: "ヘアケア")

c7_6.children.create(name: "シャンプー")
c7_6.children.create(name: "トリートメント")
c7_6.children.create(name: "コンディショナー")
c7_6.children.create(name: "リンス")
c7_6.children.create(name: "スタイリング剤")
c7_6.children.create(name: "カラーリング剤")
c7_6.children.create(name: "ブラシ")
c7_6.children.create(name: "その他")

c7_7 = c7.children.create(name: "ボディケア")

c7_7.children.create(name: "オイル/クリーム")
c7_7.children.create(name: "ハンドクリーム")
c7_7.children.create(name: "ローション")
c7_7.children.create(name: "日焼け止め/サンオイル")
c7_7.children.create(name: "ボディソープ")
c7_7.children.create(name: "入浴剤")
c7_7.children.create(name: "制汗/デオドラント")
c7_7.children.create(name: "フットケア")
c7_7.children.create(name: "その他")

c7_8 = c7.children.create(name: "オーラルケア")

c7_8.children.create(name: "口臭防止/エチケット用品")
c7_8.children.create(name: "歯ブラシ")
c7_8.children.create(name: "その他")

c7_9 = c7.children.create(name: "リラクゼーション")

c7_9.children.create(name: "エッセンシャルオイル")
c7_9.children.create(name: "芳香器")
c7_9.children.create(name: "お香/香炉")
c7_9.children.create(name: "キャンドル")
c7_9.children.create(name: "リラクゼーショングッズ")
c7_9.children.create(name: "その他")

c7_10 = c7.children.create(name: "ダイエット")

c7_10.children.create(name: "ダイエット食品")
c7_10.children.create(name: "エクササイズ用品")
c7_10.children.create(name: "体重計")
c7_10.children.create(name: "体脂肪計")
c7_10.children.create(name: "その他")

c7_11 = c7.children.create(name: "その他")

c7_11.children.create(name: "健康用品")
c7_11.children.create(name: "看護/介護用品")
c7_11.children.create(name: "救急/衛生用品")
c7_11.children.create(name: "その他")


c8 = Category.create(name: "家電・スマホ・カメラ")

c8_1 = c8.children.create(name: "スマートフォン/携帯電話")

c8_1.children.create(name: "スマートフォン本体")
c8_1.children.create(name: "バッテリー/充電器")
c8_1.children.create(name: "携帯電話本体")
c8_1.children.create(name: "PHS本体")
c8_1.children.create(name: "その他")

c8_2 = c8.children.create(name: "スマホアクセサリー")

c8_2.children.create(name: "Android用ケース")
c8_2.children.create(name: "iPhone用ケース")
c8_2.children.create(name: "カバー")
c8_2.children.create(name: "イヤホンジャック")
c8_2.children.create(name: "ストラップ")
c8_2.children.create(name: "フィルム")
c8_2.children.create(name: "自撮り棒")
c8_2.children.create(name: "その他")

c8_3 = c8.children.create(name: "PC/タブレット")

c8_3.children.create(name: "タブレット")
c8_3.children.create(name: "ノートPC")
c8_3.children.create(name: "デスクトップ型PC")
c8_3.children.create(name: "ディスプレイ")
c8_3.children.create(name: "電子ブックリーダー")
c8_3.children.create(name: "PC周辺機器")
c8_3.children.create(name: "PCパーツ")
c8_3.children.create(name: "その他")

c8_4 = c8.children.create(name: "カメラ")

c8_4.children.create(name: "デジタルカメラ")
c8_4.children.create(name: "ビデオカメラ")
c8_4.children.create(name: "レンズ(単焦点)")
c8_4.children.create(name: "レンズ(ズーム)")
c8_4.children.create(name: "フィルムカメラ")
c8_4.children.create(name: "防犯カメラ")
c8_4.children.create(name: "その他")

c8_5 = c8.children.create(name: "テレビ/映像機器")

c8_5.children.create(name: "テレビ")
c8_5.children.create(name: "プロジェクター")
c8_5.children.create(name: "ブルーレイレコーダー")
c8_5.children.create(name: "DVDレコーダー")
c8_5.children.create(name: "ブルーレイプレーヤー")
c8_5.children.create(name: "DVDプレーヤー")
c8_5.children.create(name: "映像用ケーブル")
c8_5.children.create(name: "その他")

c8_6 = c8.children.create(name: "オーディオ機器")

c8_6.children.create(name: "ポータブルプレーヤー")
c8_6.children.create(name: "イヤフォン")
c8_6.children.create(name: "ヘッドフォン")
c8_6.children.create(name: "アンプ")
c8_6.children.create(name: "スピーカー")
c8_6.children.create(name: "ケーブル/シールド")
c8_6.children.create(name: "ラジオ")
c8_6.children.create(name: "その他")

c8_7 = c8.children.create(name: "美容/健康")

c8_7.children.create(name: "ヘアドライヤー")
c8_7.children.create(name: "ヘアアイロン")
c8_7.children.create(name: "美容機器")
c8_7.children.create(name: "電気シェーバー")
c8_7.children.create(name: "電動歯ブラシ")
c8_7.children.create(name: "その他")

c8_8 = c8.children.create(name: "冷暖房/空調")

c8_8.children.create(name: "エアコン")
c8_8.children.create(name: "空気清浄器")
c8_8.children.create(name: "加湿器")
c8_8.children.create(name: "扇風機")
c8_8.children.create(name: "除湿機")
c8_8.children.create(name: "ファンヒーター")
c8_8.children.create(name: "電気ヒーター")
c8_8.children.create(name: "オイルヒーター")
c8_8.children.create(name: "ストーブ")
c8_8.children.create(name: "ホットカーペット")
c8_8.children.create(name: "こたつ")
c8_8.children.create(name: "電気毛布")
c8_8.children.create(name: "その他")

c8_9 = c8.children.create(name: "生活家電")

c8_9.children.create(name: "冷蔵庫")
c8_9.children.create(name: "洗濯機")
c8_9.children.create(name: "炊飯器")
c8_9.children.create(name: "電子レンジ/オーブン")
c8_9.children.create(name: "調理機器")
c8_9.children.create(name: "アイロン")
c8_9.children.create(name: "掃除機")
c8_9.children.create(name: "エスプレッソマシン")
c8_9.children.create(name: "コーヒーメーカー")
c8_9.children.create(name: "衣類乾燥機")
c8_9.children.create(name: "その他")

c8_10 = c8.children.create(name: "その他")

c8_10.children.create(name: "その他")


c9 = Category.create(name: "スポーツ・レジャー")

c9_1 = c9.children.create(name: "ゴルフ")

c9_1.children.create(name: "クラブ")
c9_1.children.create(name: "ウエア(男性用)")
c9_1.children.create(name: "ウエア(女性用)")
c9_1.children.create(name: "バッグ")
c9_1.children.create(name: "シューズ(男性用)")
c9_1.children.create(name: "シューズ(女性用)")
c9_1.children.create(name: "アクセサリー")
c9_1.children.create(name: "その他")

c9_2 = c9.children.create(name: "フィッシング")

c9_2.children.create(name: "ロッド")
c9_2.children.create(name: "リール")
c9_2.children.create(name: "ルアー用品")
c9_2.children.create(name: "ウエア")
c9_2.children.create(name: "釣り糸/ライン")
c9_2.children.create(name: "その他")

c9_3 = c9.children.create(name: "自転車")

c9_3.children.create(name: "自転車本体")
c9_3.children.create(name: "ウエア")
c9_3.children.create(name: "パーツ")
c9_3.children.create(name: "アクセサリー")
c9_3.children.create(name: "バッグ")
c9_3.children.create(name: "工具/メンテナンス")
c9_3.children.create(name: "その他")

c9_4 = c9.children.create(name: "トレーニング/エクササイズ")

c9_4.children.create(name: "ランニング")
c9_4.children.create(name: "ウォーキング")
c9_4.children.create(name: "ヨガ")
c9_4.children.create(name: "トレーニング用品")
c9_4.children.create(name: "その他")

c9_5 = c9.children.create(name: "野球")

c9_5.children.create(name: "ウェア")
c9_5.children.create(name: "シューズ")
c9_5.children.create(name: "グローブ")
c9_5.children.create(name: "バット")
c9_5.children.create(name: "アクセサリー")
c9_5.children.create(name: "防具")
c9_5.children.create(name: "練習機器")
c9_5.children.create(name: "記念グッズ")
c9_5.children.create(name: "応援グッズ")
c9_5.children.create(name: "その他")

c9_6 = c9.children.create(name: "サッカー/フットサル")

c9_6.children.create(name: "ウェア")
c9_6.children.create(name: "シューズ")
c9_6.children.create(name: "ボール")
c9_6.children.create(name: "アクセサリー")
c9_6.children.create(name: "記念グッズ")
c9_6.children.create(name: "応援グッズ")
c9_6.children.create(name: "その他")

c9_7 = c9.children.create(name: "テニス")

c9_7.children.create(name: "ラケット(硬式用)")
c9_7.children.create(name: "ラケット(軟式用)")
c9_7.children.create(name: "ウェア")
c9_7.children.create(name: "シューズ")
c9_7.children.create(name: "ボール")
c9_7.children.create(name: "アクセサリー")
c9_7.children.create(name: "記念グッズ")
c9_7.children.create(name: "応援グッズ")
c9_7.children.create(name: "その他")

c9_8 = c9.children.create(name: "スノーボード")

c9_8.children.create(name: "ボード")
c9_8.children.create(name: "バインディング")
c9_8.children.create(name: "ブーツ(男性用)")
c9_8.children.create(name: "ブーツ(女性用)")
c9_8.children.create(name: "ブーツ(子ども用)")
c9_8.children.create(name: "ウエア/装備(男性用)")
c9_8.children.create(name: "ウエア/装備(女性用)")
c9_8.children.create(name: "ウエア/装備(子ども用)")
c9_8.children.create(name: "アクセサリー")
c9_8.children.create(name: "バッグ")
c9_8.children.create(name: "その他")

c9_9 = c9.children.create(name: "スキー")

c9_9.children.create(name: "板")
c9_9.children.create(name: "ブーツ(男性用)")
c9_9.children.create(name: "ブーツ(女性用)")
c9_9.children.create(name: "ブーツ(子ども用)")
c9_9.children.create(name: "ビンディング")
c9_9.children.create(name: "ウエア(男性用)")
c9_9.children.create(name: "ウエア(女性用)")
c9_9.children.create(name: "ウエア(子ども用)")
c9_9.children.create(name: "ストック")
c9_9.children.create(name: "その他")

c9_10 = c9.children.create(name: "その他スポーツ")

c9_10.children.create(name: "ダンス/バレエ")
c9_10.children.create(name: "サーフィン")
c9_10.children.create(name: "バスケットボール")
c9_10.children.create(name: "バドミントン")
c9_10.children.create(name: "バレーボール")
c9_10.children.create(name: "スケートボード")
c9_10.children.create(name: "陸上競技")
c9_10.children.create(name: "ラグビー")
c9_10.children.create(name: "アメリカンフットボール")
c9_10.children.create(name: "ボクシング")
c9_10.children.create(name: "ボウリング")
c9_10.children.create(name: "その他")

c9_11 = c9.children.create(name: "アウトドア")

c9_11.children.create(name: "テント/タープ")
c9_11.children.create(name: "ライト/ランタン")
c9_11.children.create(name: "寝袋/寝具")
c9_11.children.create(name: "テーブル/チェア")
c9_11.children.create(name: "ストーブ/コンロ")
c9_11.children.create(name: "調理器具")
c9_11.children.create(name: "食器")
c9_11.children.create(name: "登山用品")
c9_11.children.create(name: "その他")

c9_12 = c9.children.create(name: "その他")

c9_12.children.create(name: "旅行用品")
c9_12.children.create(name: "その他")


c10 = Category.create(name: "ハンドメイド")

c10_1 = c10.children.create(name: "アクセサリー(女性用)")

c10_1.children.create(name: "ピアス")
c10_1.children.create(name: "イヤリング")
c10_1.children.create(name: "ネックレス")
c10_1.children.create(name: "ブレスレット")
c10_1.children.create(name: "リング")
c10_1.children.create(name: "チャーム")
c10_1.children.create(name: "ヘアゴム")
c10_1.children.create(name: "アンクレット")
c10_1.children.create(name: "その他")

c10_2 = c10.children.create(name: "ファッション/小物")

c10_2.children.create(name: "バッグ(女性用)")
c10_2.children.create(name: "バッグ(男性用)")
c10_2.children.create(name: "財布(女性用)")
c10_2.children.create(name: "財布(男性用)")
c10_2.children.create(name: "ファッション雑貨")
c10_2.children.create(name: "その他")

c10_3 = c10.children.create(name: "アクセサリー/時計")

c10_3.children.create(name: "アクセサリー(男性用)")
c10_3.children.create(name: "時計(女性用)")
c10_3.children.create(name: "時計(男性用)")
c10_3.children.create(name: "その他")

c10_4 = c10.children.create(name: "日用品/インテリア")

c10_4.children.create(name: "キッチン用品")
c10_4.children.create(name: "家具")
c10_4.children.create(name: "文房具")
c10_4.children.create(name: "アート/写真")
c10_4.children.create(name: "アロマ/キャンドル")
c10_4.children.create(name: "フラワー/ガーデン")
c10_4.children.create(name: "その他")

c10_5 = c10.children.create(name: "趣味/おもちゃ")

c10_5.children.create(name: "クラフト/布製品")
c10_5.children.create(name: "おもちゃ/人形")
c10_5.children.create(name: "その他")

c10_6 = c10.children.create(name: "キッズ/ベビー")

c10_6.children.create(name: "ファッション雑貨")
c10_6.children.create(name: "スタイ/よだれかけ")
c10_6.children.create(name: "外出用品")
c10_6.children.create(name: "ネームタグ")
c10_6.children.create(name: "その他")

c10_7 = c10.children.create(name: "素材/材料")

c10_7.children.create(name: "各種パーツ")
c10_7.children.create(name: "生地/糸")
c10_7.children.create(name: "型紙/パターン")
c10_7.children.create(name: "その他")

c10_8 = c10.children.create(name: "二次創作物")

c10_8.children.create(name: "Ingress")
c10_8.children.create(name: "クリエイターズ宇宙兄弟")

c10_9 = c10.children.create(name: "その他")


c11 = Category.create(name: "チケット")

c11_1 = c11.children.create(name: "音楽")

c11_1.children.create(name: "男性アイドル")
c11_1.children.create(name: "女性アイドル")
c11_1.children.create(name: "韓流")
c11_1.children.create(name: "国内アーティスト")
c11_1.children.create(name: "海外アーティスト")
c11_1.children.create(name: "音楽フェス")
c11_1.children.create(name: "声優/アニメ")
c11_1.children.create(name: "その他")

c11_2 = c11.children.create(name: "スポーツ")

c11_2.children.create(name: "サッカー")
c11_2.children.create(name: "野球")
c11_2.children.create(name: "テニス")
c11_2.children.create(name: "格闘技/プロレス")
c11_2.children.create(name: "相撲/武道")
c11_2.children.create(name: "ゴルフ")
c11_2.children.create(name: "バレーボール")
c11_2.children.create(name: "バスケットボール")
c11_2.children.create(name: "モータースポーツ")
c11_2.children.create(name: "ウィンタースポーツ")
c11_2.children.create(name: "その他")

c11_3 = c11.children.create(name: "演劇/芸能")

c11_3.children.create(name: "ミュージカル")
c11_3.children.create(name: "演劇")
c11_3.children.create(name: "伝統芸能")
c11_3.children.create(name: "落語")
c11_3.children.create(name: "お笑い")
c11_3.children.create(name: "オペラ")
c11_3.children.create(name: "サーカス")
c11_3.children.create(name: "バレエ")
c11_3.children.create(name: "その他")

c11_4 = c11.children.create(name: "イベント")

c11_4.children.create(name: "声優/アニメ")
c11_4.children.create(name: "キッズ/ファミリー")
c11_4.children.create(name: "トークショー/講演会")
c11_4.children.create(name: "その他")

c11_5 = c11.children.create(name: "映画")

c11_5.children.create(name: "邦画")
c11_5.children.create(name: "洋画")
c11_5.children.create(name: "その他")

c11_6 = c11.children.create(name: "施設利用券")

c11_6.children.create(name: "遊園地/テーマパーク")
c11_6.children.create(name: "美術館/博物館")
c11_6.children.create(name: "スキー場")
c11_6.children.create(name: "ゴルフ場")
c11_6.children.create(name: "フィットネスクラブ")
c11_6.children.create(name: "プール")
c11_6.children.create(name: "ボウリング場")
c11_6.children.create(name: "水族館")
c11_6.children.create(name: "動物園")
c11_6.children.create(name: "その他")

c11_7 = c11.children.create(name: "優待券/割引券")

c11_7.children.create(name: "ショッピング")
c11_7.children.create(name: "レストラン/食事券")
c11_7.children.create(name: "フード/ドリンク券")
c11_7.children.create(name: "宿泊券")
c11_7.children.create(name: "その他")

c11_8 = c11.children.create(name: "その他")


c12 = Category.create(name: "自動車・オートバイ")

c12_1 = c12.children.create(name: "自動車本体")

c12_1.children.create(name: "国内自動車本体")
c12_1.children.create(name: "外国自動車本体")

c12_2 = c12.children.create(name: "自動車タイヤ/ホイール")

c12_2.children.create(name: "タイヤ/ホイールセット")
c12_2.children.create(name: "タイヤ")
c12_2.children.create(name: "ホイール")
c12_2.children.create(name: "その他")

c12_3 = c12.children.create(name: "自動車パーツ")

c12_3.children.create(name: "サスペンション")
c12_3.children.create(name: "ブレーキ")
c12_3.children.create(name: "外装、エアロパーツ")
c12_3.children.create(name: "ライト")
c12_3.children.create(name: "内装品、シート")
c12_3.children.create(name: "ステアリング")
c12_3.children.create(name: "マフラー・排気系")
c12_3.children.create(name: "エンジン、過給器、冷却装置")
c12_3.children.create(name: "クラッチ、ミッション、駆動系")
c12_3.children.create(name: "電装品")
c12_3.children.create(name: "補強パーツ")
c12_3.children.create(name: "汎用パーツ")
c12_3.children.create(name: "外国自動車用パーツ")
c12_3.children.create(name: "その他")

c12_4 = c12.children.create(name: "自動車アクセサリー")

c12_4.children.create(name: "車内アクセサリー")
c12_4.children.create(name: "カーナビ")
c12_4.children.create(name: "カーオーディオ")
c12_4.children.create(name: "車外アクセサリー")
c12_4.children.create(name: "メンテナンス用品")
c12_4.children.create(name: "チャイルドシート")
c12_4.children.create(name: "ドライブレコーダー")
c12_4.children.create(name: "レーダー探知機")
c12_4.children.create(name: "カタログ/マニュアル")
c12_4.children.create(name: "セキュリティ")
c12_4.children.create(name: "ETC")
c12_4.children.create(name: "その他")

c12_5 = c12.children.create(name: "オートバイ車体")

c12_6 = c12.children.create(name: "オートバイパーツ")

c12_6.children.create(name: "タイヤ")
c12_6.children.create(name: "マフラー")
c12_6.children.create(name: "エンジン、冷却装置")
c12_6.children.create(name: "カウル、フェンダー、外装")
c12_6.children.create(name: "サスペンション")
c12_6.children.create(name: "ホイール")
c12_6.children.create(name: "シート")
c12_6.children.create(name: "ブレーキ")
c12_6.children.create(name: "タンク")
c12_6.children.create(name: "ライト、ウィンカー")
c12_6.children.create(name: "チェーン、スプロケット、駆動系")
c12_6.children.create(name: "メーター")
c12_6.children.create(name: "電装系")
c12_6.children.create(name: "ミラー")
c12_6.children.create(name: "外国オートバイ用パーツ")
c12_6.children.create(name: "その他")

c12_7 = c12.children.create(name: "オートバイアクセサリー")

c12_7.children.create(name: "ヘルメット/シールド")
c12_7.children.create(name: "バイクウエア/装備")
c12_7.children.create(name: "アクセサリー")
c12_7.children.create(name: "メンテナンス")
c12_7.children.create(name: "カタログ/マニュアル")
c12_7.children.create(name: "その他")


c13 = Category.create(name: "その他")

c13_1 = c13.children.create(name: "まとめ売り")

c13_2 = c13.children.create(name: "ペット用品")

c13_2.children.create(name: "ペットフード")
c13_2.children.create(name: "犬用品")
c13_2.children.create(name: "猫用品")
c13_2.children.create(name: "魚用品/水草")
c13_2.children.create(name: "小動物用品")
c13_2.children.create(name: "爬虫類/両生類用品")
c13_2.children.create(name: "かご/おり")
c13_2.children.create(name: "鳥用品")
c13_2.children.create(name: "虫類用品")
c13_2.children.create(name: "その他")

c13_3 = c13.children.create(name: "食品")

c13_3.children.create(name: "菓子")
c13_3.children.create(name: "米")
c13_3.children.create(name: "野菜")
c13_3.children.create(name: "果物")
c13_3.children.create(name: "調味料")
c13_3.children.create(name: "魚介類(加工食品)")
c13_3.children.create(name: "肉類(加工食品)")
c13_3.children.create(name: "その他 加工食品")
c13_3.children.create(name: "その他")

c13_4 = c13.children.create(name: "飲料/酒")

c13_4.children.create(name: "コーヒー")
c13_4.children.create(name: "ソフトドリンク")
c13_4.children.create(name: "ミネラルウォーター")
c13_4.children.create(name: "茶")
c13_4.children.create(name: "ウイスキー")
c13_4.children.create(name: "ワイン")
c13_4.children.create(name: "ブランデー")
c13_4.children.create(name: "焼酎")
c13_4.children.create(name: "日本酒")
c13_4.children.create(name: "ビール、発泡酒")
c13_4.children.create(name: "その他")

c13_5 = c13.children.create(name: "日用品/生活雑貨/旅行")

c13_5.children.create(name: "タオル/バス用品")
c13_5.children.create(name: "日用品/生活雑貨")
c13_5.children.create(name: "洗剤/柔軟剤")
c13_5.children.create(name: "旅行用品")
c13_5.children.create(name: "防災関連グッズ")
c13_5.children.create(name: "その他")

c13_6 = c13.children.create(name: "アンティーク/コレクション")

c13_6.children.create(name: "雑貨")
c13_6.children.create(name: "工芸品")
c13_6.children.create(name: "家具")
c13_6.children.create(name: "印刷物")
c13_6.children.create(name: "その他")

c13_7 = c13.children.create(name: "文房具/事務用品")

c13_7.children.create(name: "筆記具")
c13_7.children.create(name: "ノート/メモ帳")
c13_7.children.create(name: "テープ/マスキングテープ")
c13_7.children.create(name: "カレンダー/スケジュール")
c13_7.children.create(name: "アルバム/スクラップ")
c13_7.children.create(name: "ファイル/バインダー")
c13_7.children.create(name: "はさみ/カッター")
c13_7.children.create(name: "カードホルダー/名刺管理")
c13_7.children.create(name: "のり/ホッチキス")
c13_7.children.create(name: "その他")

c13_8 = c13.children.create(name: "事務/店舗用品")

c13_8.children.create(name: "オフィス用品一般")
c13_8.children.create(name: "オフィス家具")
c13_8.children.create(name: "店舗用品")
c13_8.children.create(name: "OA機器")
c13_8.children.create(name: "ラッピング/包装")
c13_8.children.create(name: "その他")

c13_9 = c13.children.create(name: "その他")
