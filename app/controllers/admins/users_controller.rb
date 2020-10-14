class Admins::UsersController < Admins::Base
  
  def index
    @users = User.all.page(params[:page]).per(5)
    @users = @users.where('name LIKE ?', "%#{params[:search]}%") if params[:search].present?
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
      redirect_to admins_user_path(@user.id), notice: "ユーザ情報を編集しました"
    else
      render :edit
    end
  end

  def destroy
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :nick_name, :email, :introduction, :is_deleted)
  end
  
end
