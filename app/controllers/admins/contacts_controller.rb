class Admins::ContactsController < Admins::Base
  def index
    @contacts = Contact.all.page(params[:page]).per(5)
    @contacts = @contacts.where('title LIKE ?', "%#{params[:search]}%") if params[:search].present?
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      redirect_to admins_contact_path(@contact.id), notice: "お問い合わせを編集しました"
    else
      render :edit
    end
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    redirect_to admins_contacts_path, notice: "お問い合わせを削除しました"
  end

  private
  
  def contact_params
    params.require(:contact).permit(:title, :body, :anser, :anser_status)
  end

end
