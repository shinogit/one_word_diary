class ApplicationController < ActionController::Base

  # before_action :authenticate_admin!
  # before_action :authenticate_user!
  # before_action :configure_permitted_parameters, if: :devise_controller?

  # def after_sign_in_path_for(resource)
  #   case resource
  #     when Admin
  #       admins_users_path
  #     when User
  #       words_path
  #   end
  # end


  # def after_sign_out_path_for(resource)
  #   case resource
  #     when Admin
  #       new_admin_session_path
  #     when User
  #       new_user_session_path
  #     end  
  # end

  # private

  # # 新規登録時(sign_up時)にDBに変更を許可するパラメータ
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :encrypted_password, :name, :nick_name])
  # end

end
