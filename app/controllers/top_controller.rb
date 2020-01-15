class TopController < ApplicationController
  def index
    @items = Item.order('created_at DESC').page(params[:page]).per(5)
  end

  def show
    @items = Item.order('created_at DESC')
  end

end
