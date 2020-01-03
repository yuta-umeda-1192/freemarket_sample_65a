class ItemsController < ApplicationController
  def index
    @items = Item.order('created_at DESC').page(params[:page]).per(5)
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
  end

  def show
    @item = Item.find(params[:id])
  end

  private
  def item_params
    params.require(:item).permit(:all)
  end

end