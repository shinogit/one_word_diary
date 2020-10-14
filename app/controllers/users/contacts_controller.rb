class Users::ContactsController < Users::Base

  before_action :ensure_correct_user,{only: [:show, :edit, :update, :destroy]}

  def index
    @contacts = Contact.all.page(params[:page]).per(5)
    @contact = Contact.new
  end

  def show
    @contact =  Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end
  

  def create
    @contact = Contact.new(contact_params)
    @contact.user_id = current_user.id
    if @contact.save
      redirect_to contacts_path
    else
      @contacts = Contact.all.page(params[:page]).per(5)
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
    @contact = Contact.find(params[:id])
    if @contact.user_id != current_user.id
      flash[:notice] = "他人のお問い合わせの閲覧や編集はできません"
      redirect_to contacts_path
    end
  end
  
  private

  def contact_params
    params.require(:contact).permit(:title, :body)
  end

end
