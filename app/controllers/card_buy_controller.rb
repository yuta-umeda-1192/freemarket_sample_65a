class CardBuyController < ApplicationController
  before_action :correct_user, only: [:show]

  def show
    @card = Card.find_by(user_id: current_user.id)
    @item = Item.find(params[:item_id])
    session[:item] = params[:item_id]
    if @item.buyer_id
      redirect_to root_path
    end
  end

  def create #クレジット購入
    card = Card.find_by(user_id: current_user.id)
    if card.blank?
      redirect_to controller: "card",action:"new"
      # flash[:alert] = '購入にはクレジットカード登録が必要です'
    else
      @item = Item.find(params[:item_id])
    # 購入した際の情報を元に引っ張ってくる
      Payjp.api_key = 'sk_test_b13301a481b177854022e46b'
    # キーをセットする(環境変数においても良い)

      require "date"
      d = Date.today;
      if d.month == 1
        Payjp::Charge.create(
        amount: (@item.price * 0.5).round, #支払金額
        customer: card.customer_id, #顧客ID
        currency: 'jpy', #日本円
        )
      else
        Payjp::Charge.create(
          amount: @item.price, #支払金額
          customer: card.customer_id, #顧客ID
          currency: 'jpy', #日本円
          )
      end

     # ↑商品の金額をamountへ、cardの顧客idをcustomerへ、currencyをjpyへ入れる
      @item.update(buyer_id: current_user.id)
    end
     #↑この辺はこちら側のテーブル設計どうりに色々しています
  end

  private

  def correct_user
    @item = Item.find(params[:item_id])
    if @item.buyer_id || current_user.id == @item.user_id
      redirect_to root_path
    end
  end
end


