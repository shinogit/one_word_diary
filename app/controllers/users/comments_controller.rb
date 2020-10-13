class Users::CommentsController < Users::Base

  before_action :ensure_correct_user,{only: [:new, :edit,:update,:destroy]}

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def ensure_correct_user
    @user = User.find(params[:id])
    if @user != current_user
      flash[:notice] = "他人のコメントの編集はできません！"
      redirect_to user_path(current_user)
    end
  end

end
