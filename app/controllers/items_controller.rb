class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :destroy]

  def index
    @items = Item.order('created_at DESC').page(params[:page]).per(5)
  end

  def new
    @item = Item.new
    @item.images.new
    @items = Item.includes(:images).order('created_at DESC')
    # @parents = ItemCategory.all.order("id ASC").limit(13)
    # カテゴリーテーブルのidカラム上から１３行目を@parentに代入せよ
  end

  def create
    @item = Item.new(item_params)
    if @item.save
     redirect_to new_item_path
    end
  end

  def show
  end

  def edit
  end

  def update
    item = Item.find(params[:id])
    if item.update(item_params)
      redirect_to root_path
    else
      redirect_to edit_item_path
    end

  end

  def destroy
    @item.destroy
    redirect_to root_path
  end

  private
  def item_params
    params.require(:item).permit(:name, :price, :discription, images_attributes: [:id, :src])
  end

  def set_item
    @item = Item.find(params[:id])
  end

end