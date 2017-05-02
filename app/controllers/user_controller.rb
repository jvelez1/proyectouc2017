class UserController < ApplicationController


  private
  def user_params
    params.requiere(:user).permit(:email, :password, :password_confirmation,
                   :remember_me, :admin, :auditor)
  end

end
