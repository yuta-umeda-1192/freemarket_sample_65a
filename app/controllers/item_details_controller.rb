class ItemDetailsController < ApplicationController
  def index
    @item = Item.find(1)
  end

  def show
    @item = Item.find(1)
  end
end
