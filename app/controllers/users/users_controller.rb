class Users::UsersController < Users::Base
  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
