# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

<!-- ## usersテーブル

|Column|Type|Options|
|------|----|-------|
||||
||||
||||

### Association
- has_many :
- belongs_to : -->

<!-- 上記はフォーマットとして活用 -->
<!-- テーブル名の「＿」は、自由でOK。readme上でわかりやすいように付けているだけ -->

<!-- ユーザー -->
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|
|year|integer|null: false|
|month|integer|null: false|
|day|integer|null: false|


### Association
- has_many :todo
- has_many :evaluations, through: users_evaluations
- has_many :likes
- has_one :address


## sns_credentialsテーブル

|Column|Type|Options|
|------|----|-------|
|provider|--|null: false|
|uid|-------|null: false|
|user_id|integer|null: false, foreign_key: true|
|created_at|-|null: false|
|updated_at|-|null: false|


### Asociation
- belongs_to :user




<!-- 住所テーブル -->
## addressテーブル

|Column|Type|Options|
|------|----|-------|
|postal_code|integer|null: false|
|prefeture|string|null: false|
|city|string|null: false|
|address|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|building_name|string|null: false|

### Association
- belongs_to :user


<!-- やることリスト -->
## todoテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|todo_text|text|null: false|

### Association
- belongs_to :user


<!-- 評価 -->
## evaluationテーブル

|Column|Type|Options|
|------|----|-------|
|good|string|null: true|
|usual|string|null: true|
|bad|string|null: true|

### Association
- has_many :users, through: users_evaluations


<!-- 商品 -->
## itemテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|price|integer|null: false|
|prefeture|string|null: false|
|discription|string|null: false|
|delivery_day|string|null: false|
|delively_method|string|null: false|
|delivery_burden_fee|string|null: false|
|delivery_area_id|references|null: false, foreign_key: true|
|item_category_id|references|null: false, foreign_key: true|
|brand_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|
|buyer_id|references|null: false, foreign_key: true|


### Association
- has_many :likes
- has_many :images
- belongs_to :brand
- belongs_to :item_category
- belongs_to :delivery_method
- belongs_to :delivery_burden_fee
- belongs_to :delivery_day
- belongs_to :delivery_area
- belongs_to :size
- belongs_to :item_status

<!-- 発送元の地域 -->
## delivery_areaテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :items


<!-- 商品サイズ -->
## sizeテーブル

|Column|Type|Options|
|------|----|-------|
|size|string|null: false|

### Association
- has_many :items


<!-- 商品状態 -->
## item_statusテーブル

|Column|Type|Options|
|------|----|-------|
|status|string|null: false|

### Association
- has_many :items


<!-- 商品画像 -->
## imageテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|string||
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :item


<!-- ブランド名 -->
## brandテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: true|

### Association
- has_many :items


<!-- カテゴリー  -->
## item_category テーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string||

### Association
- has_many :items


<!-- 中間テーブル：ユーザー/評価 -->
## users_evaluationsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|evaluation_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :evaluation

<!-- いいねテーブル -->
## likeテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
|notice_comment|text|null: false|

### Association
- belongs_to :user
- belongs_to :item

