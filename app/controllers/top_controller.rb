class TopController < ApplicationController
  def index
    @items = Item.order('created_at DESC').page(params[:page]).per(10)
  end

  def new
    @items = Item.order('created_at DESC')
  end

end
