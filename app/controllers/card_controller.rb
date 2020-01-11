class CardController < ApplicationController
  require "payjp"
  before_action :set_card, only: [:index, :show, :destroy, :new]


  def index #CardのデータをPayjpに送って情報を取り出す
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
  
  def new # カードの登録画面。送信ボタンを押すとcreateアクションへ。
    redirect_to action: "index" if @card.present?
  end

 # indexアクションはここでは省略

  def create #PayjpとCardのデータベースを作成
    Payjp.api_key = 'sk_test_b13301a481b177854022e46b'
    # ENV['PAYJP_PRIVATE_KEY']
    if params['payjpToken'].blank?
      redirect_to action: "new"
    else
      # トークンが正常に発行されていたら、顧客情報をPAY.JPに登録します。
      customer = Payjp::Customer.create(
        description: 'test', # 無くてもOK。PAY.JPの顧客情報に表示する概要です。
        email: current_user.email,
        card: params['payjpToken'], # 直前のnewアクションで発行され、送られてくるトークンをここで顧客に紐付けて永久保存します。
        metadata: {user_id: current_user.id} # 無くてもOK。
      )
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to action: "index"
      else
        redirect_to action: "create"
      end
    end
  end
  
  def destroy #PayjpとCardのデータベースを削除
    Payjp.api_key = 'sk_test_b13301a481b177854022e46b'
    # ENV['PAYJP_PRIVATE_KEY']
    customer = Payjp::Customer.retrieve(@card.customer_id)
    customer.delete
    @card.destroy
  end

  def show #Cardのデータpayjpに送り情報を取り出します
    if card.blank?
      redirect_to action: "new" 
    else
      Payjp.api_key = 'sk_test_b13301a481b177854022e46b'
      # ENV['PAYJP_PRIVATE_KEY']
      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)
  end
end

  private

  def set_card
    @card = Card.find_by(user_id: current_user) if Card.find_by(user_id: current_user).present?
  end
end
