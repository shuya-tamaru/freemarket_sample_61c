# mercariのDB設計
​
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, index: true|
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|birthday_year|integer|null: false|
|birthday_month|integer|null: false|
|birthday_date|integer|null: false|

### Association
- has_many :items
- has_many :social_profiles
- has_many :evaluations
- has_many :likes
- has_many :to_dos
- has_many :news
- has_many :announces
- has_many :item_comments
- has_many :trade_comments
- has_one  :cellphone
- has_one  :address
- has_one  :card
​
​
## cardsテーブル(クレジットカード)
|Column|Type|Options|
|------|----|-------|
|number|integer|null:false|
|name|string|null:false|
|validated_date_year|integer|null:false|
|validated_date_month|integer|null:false|
|security_number|integer|null:false|
|user|references|null: false, foreign_key:true|
### Association
- belongs_to :user


## addressesテーブル(住所)
|Column|Type|Options|
|------|----|-------|
|zip_code|integer|null: false|
|prefecture|integer|null: false|
|city|string|null:false|
|address|string|null:false|
|building|string||
|phone_tel|integer||
|user|references|null: false, foreign_key:true|
### Association
- belongs_to :user


## cellphonesテーブル(携帯電話)
|Column|Type|Options|
|------|----|-------|
|number|integer|null: false, unique: true|
|user|references|null: false, foreign_key:true|
### Association
- belongs_to :user
​
​
## to_doesテーブル(やることリスト)
|Column|Type|Options|
|------|----|-------|
|todo|string||
|user|references|null: false, foreign_key:true|
### Association
- belongs_to :user
​
​
## announcesテーブル(お知らせ)
|Column|Type|Options|
|------|----|-------|
|announce|string||
|user|references|null: false, foreign_key:true|
### Association
- belongs_to :user
​
​
## newsテーブル(ニュース一覧)
|Column|Type|Options|
|------|----|-------|
|news|string||
|user|references|null: false, foreign_key:true|
### Association
- belongs_to :user
​
​
## evaluationsテーブル(ユーザーに対する評価)
|Column|Type|Options|
|------|----|-------|
|good_type|integer|null:false|
|normal_type|integer|null:false|
|bad_type|integer|null:false|
|comment|string||
|user|references|null: false, foreign_key:true|
### Association
- belongs_to :user
​
​
## likesテーブル(いいね！)
|Column|Type|Options|
|------|----|-------|
|user|refernces|null: false, foreign_key: true|
|item|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :item
​
​
## social_profilesテーブル(SNSアカウントでログインする機能)
|Column|Type|Options|
|------|----|-------|
|user|references|null:false, foreign_key: true|
|provider|string|null: false|
|uid|string|null:false|
|access_token|string||
|refresh_token|string||
|name|string||
|nickname|string||
|email|string||
### Association
- belongs_to :user
​
​
## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|price|integer|null: false|
|size|string||
|item_status|string|null: false|
|shipping_charge|string|null: false|
|shipping_way|string|null: false|
|discription|string|null: false|
|brand|refernces|index: true, foreign_key: true|
|grand_child_category|references|null: false, index: true, foreign_key: true|
|buyer_user_id|integer||
|saler_user_id|integer|null: false|
|fee_side|string|null: false|
|region|string|null: false|
|shipping_days|string|null: false|
|purchase_date|string||
### Association
- belongs_to :user
- has_many :evaluations
- has_many :likes
- has_many :item_comments
- has_many :trade_comments
- belongs_to :grandchild_category
- belongs_to :brand
- has_many :images
- has_one :transaction_status
​
​
## transaction_statusesテーブル
|Column|Type|Options|
|------|----|-------|
|selling|string||
|trading|string||
|sold|string||
|item|references|null: false, foreign_key: true|
### Association
- belongs_to item
​
​
## item_commentsテーブル(商品詳細ページにつくコメント)
|Column|Type|Options|
|------|----|-------|
|text|string||
|user|references|null: false, foreign_key: true|
|item|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :item
​
​
## trade_commentsテーブル(取引画面につくコメント)
|Column|Type|Options|
|------|----|-------|
|text|string||
|user|references|null: false, foreign_key: true|
|item|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :item
​
​
## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string||
### Association
- has_many :items
- has_ancestry
​
​
## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :items
​
​
## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|item|refernces|null: false, foreign_key: true|
### Association
- belongs_to :item
​
​
## sizesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
### Association
- has_many :items
