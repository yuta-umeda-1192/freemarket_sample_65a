class ItemsController < ApplicationController

  def new
    @item = Item.new
    @item.images.new
    @items = Item.includes(:images).order('created_at DESC')
    # @parents = ItemCategory.all.order("id ASC").limit(13)
    # カテゴリーテーブルのidカラム上から１３行目を@parentに代入せよ
  end

  def create
    @item = Item.create(item_params)
    if @item.save
     redirect_to new_item_path
    end
  end

  def destroy
    @item.destroy
    redirect_to new_item_path
  end

  private
  def item_params
    params.require(:item).permit(:name, :price, :prefeture, :discription, :delivery_day, :delively_method, :delivery_burden_fee, :item_category_id, images_attributes: [:src])
  end

end