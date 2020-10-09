class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    words_path
  end


  def after_sign_out_path_for(resource)
      new_user_session_path
  end

  protected
  # 新規登録時(sign_up時)にDBに変更を許可するパラメータ
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :encrypted_password, :name, :nick_name])
  end
end
