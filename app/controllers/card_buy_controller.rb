class CardBuyController < ApplicationController

  def show
  @items = Item.find(1)
  end

  def create #クレジット購入
    card = Card.where(user_id: current_user.id).first
    if card.blank?
      redirect_to controller: "card",action:"new"
      flash[:alert] = '購入にはクレジットカード登録が必要です'
    else
      @items = Item.find(params[:item_id])
     # 購入した際の情報を元に引っ張ってくる
      card = Card.where(user_id: current_user.id).first
     # テーブル紐付けてるのでログインユーザーのクレジットカードを引っ張ってくる
      Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
     # キーをセットする(環境変数においても良い)
      Payjp::Charge.create(
      amount: @items.price, #支払金額
      customer: card.customer_id, #顧客ID
      currency: 'jpy', #日本円
      )

     # ↑商品の金額をamountへ、cardの顧客idをcustomerへ、currencyをjpyへ入れる
      end
  end
end