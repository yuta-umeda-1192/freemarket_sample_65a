class MypageController < ApplicationController
  def idenfication
    @user = User.find(current_user.id)
  end

  def profile
    @user = User.find(current_user.id)
  end

  def logout
  end

  def credit_page #CardのデータをPayjpに送って情報を取り出す
    @card = Card.find_by(user_id: current_user) if Card.find_by(user_id: current_user).present?
    if @card.present?
      Payjp.api_key = 'sk_test_b13301a481b177854022e46b'
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @card_information = customer.cards.retrieve(@card.card_id)
      # ENV['PAYJP_PRIVATE_KEY']
      #《＋α》 登録しているカード会社のブランドアイコンを表示するためのコードです。---------
      @card_brand = @card_information.brand      
      case @card_brand
      when "Visa"
        @card_src = "VISA.png"
      when "JCB"
        @card_src = "JCB_logo.svg.png"
      when "MasterCard"
        @card_src = "entry-2.jpg"
      when "American Express"
        @card_src = "American_Express.png"
      when "Diners Club"
        @card_src = "diner.jpg"
      when "Discover"
        @card_src = "entry-6.jpg"
      when "SaisonCard"
        @card_src = "Saison_card_logo.svg.png"
      end
    end
  end
end
