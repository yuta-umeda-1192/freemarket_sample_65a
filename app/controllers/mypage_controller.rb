class MypageController < ApplicationController
  def idenfication
    @user = User.find(current_user.id)
  end

  def profile
    @user = User.find(current_user.id)
  end

  def logout
  end

end
