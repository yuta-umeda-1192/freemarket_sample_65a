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

## usersテーブル

|Column|Type|Options|
|------|----|-------|
||||
||||
||||

### Association
- has_many :
- belongs_to :

<!-- 上記はフォーマットとして活用 -->
<!-- テーブル名の「＿」は、自由でOK。readme上でわかりやすいように付けているだけ -->

<!-- ユーザー -->
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|||
|email|||
|password|||
|family_name|||
|first_name|||
|sei|||||||
|mei|||
|year|||
|month|||
|day|||
|post_card|||
|prefeture|||
|city|||
|address|||
|building_name|||
|post_card|||
|prefeture|||
|city|||
|address|||
|building_name|||
|profile_id|||
|to_to_id|||
||||


### Association
- has_many :
- belongs_to :


<!-- やることリスト -->
## todoテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|||
|tedo_text|||

### Association
- has_many :
- belongs_to :


<!-- 評価 -->
## evaluationテーブル

|Column|Type|Options|
|------|----|-------|
||||
||||
||||

### Association
- has_many :
- belongs_to :


<!-- 商品 -->
## itemテーブル

|Column|Type|Options|
|------|----|-------|
|name|||
|price|||
|item_status|||
|prefeture|||
|comment|||
|brand_id|||


### Association
- has_many :
- belongs_to :


<!-- 商品画像 -->
## imageテーブル

|Column|Type|Options|
|------|----|-------|
|image_name|||
|item_id|||
|image_name|||
|image|||

### Association
- has_many :
- belongs_to :


<!-- 配送方法 -->
## delively_methodテーブル

|Column|Type|Options|
|------|----|-------|
|method|||

### Association
- has_many :
- belongs_to :



<!-- 配送料負担 -->
## deliveryfee__burdenテーブル

|Column|Type|Options|
|------|----|-------|
|fee|||

### Association
- has_many :
- belongs_to :


## delivery_dayテーブル

|Column|Type|Options|
|------|----|-------|
|day|||

### Association
- has_many :
- belongs_to :


<!-- ブランド名 -->
## brandテーブル

|Column|Type|Options|
|------|----|-------|
|brand_name|||

### Association
- has_many :
- belongs_to :


<!-- カテゴリー大  -->
## upper_layer_categoly テーブル

|Column|Type|Options|
|------|----|-------|
|name|||

### Association
- has_many :
- belongs_to :


<!-- カテゴリー中  -->
## middle_layer_categoly テーブル

|Column|Type|Options|
|------|----|-------|
|name|||
|upper_layer_categoly_id|||

### Association
- has_many :
- belongs_to :


<!-- カテゴリー小  -->
## lowest_layer_categoly テーブル

|Column|Type|Options|
|------|----|-------|
|name|||
|item_it|||
|middle_layer_categoly_id|||

### Association
- has_many :
- belongs_to :


<!-- 中間テーブル：ユーザー/評価 -->
## users_evaluationsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|||
|evaluation_id|||

### Association
- has_many :
- belongs_to :


<!-- 中間テーブル：出品者 -->
## selaerテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|||
|item_id|||
||||

### Association
- has_many :
- belongs_to :


<!-- 中間テーブル：購入者 -->
## buyerテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|||
|item_id|||
||||

### Association
- has_many :
- belongs_to :


<!-- 中間テーブル：商品名コメント -->
## product_nameテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|||
|item_id|||
|comment_text|||

### Association
- has_many :
- belongs_to :


<!-- 中間テーブル：いいね  -->
## likeテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|||
|item_id|||
|notice_comment|||

### Association
- has_many :
- belongs_to :