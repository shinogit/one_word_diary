class Users::WordsController < Users::Base

  before_action :ensure_correct_user,{only: [:edit,:update,:destroy]}

  def show
    @word = Word.find(params[:id])
    @create_word = Word.new
    @comment = Comment.new
  end

  def index
    @words = Word.all
    @new_word = Word.new
  end

  def create
    @new_word = Word.new(word_params)
    @new_word.user_id = current_user.id
    if @new_word.save
      redirect_to word_path(@new_word), notice: "You have created word successfully."
    else
      @words = Word.all
      render "index"
    end
  end

  def edit
    @word = Word.find(params[:id])
    if @word.user == current_user
      render "edit"
    else
      redirect_to words_path
    end
  end

  def update
    @word = Word.find(params[:id])
    if @word.update(word_params)
      redirect_to word_path(@word), notice: "You have updated word successfully."
    else
      render "edit"
    end
  end

  def destroy
    @word = Word.find(params[:id])
    @word.destroy
    redirect_to words_path
  end

  def ensure_correct_user
    @word = Word.find(params[:id])
    if @word.user_id != current_user.id
      flash[:notice] = "権限がありません"
    redirect_to words_path
    end
  end

  private

  def word_params
    params.require(:word).permit(:title, :body)
  end
end
