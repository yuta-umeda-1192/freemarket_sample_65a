class TopController < ApplicationController
  def index
    @items = Item.order('created_at DESC').page(params[:page]).per(10)
  end

  def show
    @items = Item.order('created_at DESC')
  end

end
