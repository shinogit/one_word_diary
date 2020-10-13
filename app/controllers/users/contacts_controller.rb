class Users::ContactsController < Users::Base

  before_action :ensure_correct_user,{only: [:edit,:update,:destroy]}

  def index
    @contacts = Contact.all
    @contact = Contact.new
  end

  def show
    @contact =  Contact.find(params[:id])
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.user_id = current_user.id
    if @contact.save
      redirect_to contact_path(@contact.id),notice: "お問い合わせを登録しました"
    else
      @contacts = Contact.all
      @user = current_user
      render :index
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      redirect_to contacts_path, notice: "お問い合わせ内容を編集しました"
    else
      render :edit
    end
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    redirect_to contacts_path, notice:"お問い合わせを削除しました"
  end

  def ensure_correct_user
    @user = User.find(params[:id])
    if @user != current_user
      flash[:notice] = "他人のプロフィールの編集はできません！"
      redirect_to user_path(current_user)
    end
  end
  
  private

  def contact_params
    params.require(:contact).permit(:title, :body)
  end

end
