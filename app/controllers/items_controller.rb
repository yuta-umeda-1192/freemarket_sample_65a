class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
    # if saveがtrueならば
    #   次ページへ
    #   データベースへ保存完了
    # else
    #   同じページ表示、アラート文追加
    # end
  end

  private
  def item_params
    params.require(:item).permit(:name, :price, :prefeture, :discription, :delivery_day, :delively_method, :delivery_burden_fee, :item_category)
  end

end