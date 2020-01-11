class UsersController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def mypage
    @user = User.find(current_user.id)
  end

end
