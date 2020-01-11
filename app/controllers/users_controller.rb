class UsersController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def mypage
    if user_signed_in?
      @user = User.find(current_user.id)
    else
      redirect_to root_path
    end
  end

end
