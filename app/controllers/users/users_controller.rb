class Users::UsersController < Users::Base

  before_action :ensure_correct_user,{only: [:edit,:update,:destroy]}

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(current_user), notice: "プロフィールを編集しました"
    else
      render :edit
    end
  end

  def destroy
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :nick_name, :introduction, :img)
  end

  def ensure_correct_user
    @user = User.find(params[:id])
    if @user != current_user
      flash[:notice] = "他人のプロフィールの編集はできません！"
      redirect_to user_path(current_user)
    end
  end

end
