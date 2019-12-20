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
|phone_number|integer|null: false unique: true|
|saler_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
|likes_count_id|integer|null: false, foreign_key: true|


### Association
- has_many :todo
- has_many :evaluations, through: users_evaluations
- has_many :likes


<!-- 住所テーブル -->
## テーブル

|Column|Type|Options|
|------|----|-------|
|postal_code|integer|null: false|
|prefeture|string|null: false|
|city|string|null: false|
|address|string|null: false|
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
|brand_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
|saler_id|integer|null: false, foreign_key: true|
|buyer_id|integer|null: false, foreign_key: true|
|like_id|integer|null: false, foreign_key: true|


### Association
- has_many :likes
- belongs_to :brand
- belongs_to :upper_layer_category
- belongs_to :middle_layer_category
- belongs_to :lowest_layer_category
- belongs_to :delivery_method
- belongs_to :delivery_burden_fee
- belongs_to :delivery_day
- belong_to :size
- belong_to :status


<!-- 商品サイズ -->
## sizeテーブル

|Column|Type|Options|
|------|----|-------|
|size|string|null: false|
|item_id|intger|null: false, foreign_key: true|

### Association
- has_many :items


<!-- 商品状態 -->
## item_statusテーブル

|Column|Type|Options|
|------|----|-------|
|status|string|null: false|
|item_id|intger|null: false, foreign_key: true|

### Association
- has_many :items


<!-- 商品画像 -->
## imageテーブル

|Column|Type|Options|
|------|----|-------|
|image_name|string|null: false|
|item_id|integer|null: false, foreign_key: true|
|image|string|null: false|

### Association
- belongs_to :image


<!-- 配送方法 -->
## delively_methodテーブル

|Column|Type|Options|
|------|----|-------|
|method|string|null: false|

### Association
- has_many :items


<!-- 配送料負担 -->
## delivery_burden_feeテーブル

|Column|Type|Options|
|------|----|-------|
|burden_fee|integer|null: false|

### Association
- has_many :items


## delivery_dayテーブル

|Column|Type|Options|
|------|----|-------|
|day|string|null: false|

### Association
- has_many :items


<!-- ブランド名 -->
## brandテーブル

|Column|Type|Options|
|------|----|-------|
|brand_name|string|null: true|

### Association
- has_many :items


<!-- カテゴリー大  -->
## upper_layer_category テーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :items


<!-- カテゴリー中  -->
## middle_layer_category テーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|upper_layer_category_id|integer|null: false, foreign_key: true|

### Association
- has_many :items


<!-- カテゴリー小  -->
## lowest_layer_category テーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|item_id|integer|null: false|
|middle_layer_category_id|integer|null: false, foreign_key: true|

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


## likeテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
|notice_comment|text|null: false|

### Association
- belongs_to :user
- belongs_to :item