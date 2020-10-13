class Users::LikesController < Users::Base

  before_action :ensure_correct_user,{only: [:create,:destroy]}

  def create
  end

  def destroy
  end

  def ensure_correct_user
    @user = User.find(params[:id])
    if @user != current_user
      flash[:notice] = "他人のプロフィールの編集はできません！"
      redirect_to user_path(current_user)
    end
  end

end
