class TopController < ApplicationController

  def index
    @items = Item.order('created_at DESC').page(params[:page]).per(5)
  end

  def show
    @user = User.find(params[:id])
  end

end
