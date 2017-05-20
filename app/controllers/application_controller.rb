class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource_or_scope)
    unless current_user.admin?
      welcome_index_path
    else
      admin_users_path
    end
  end

  def authenticate_active_admin_user!
    authenticate_user!
    unless current_user.admin?
      welcome_index_path
    else
      admin_users_path
    end
  end

end
