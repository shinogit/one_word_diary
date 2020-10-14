class Admins::WordsController < Admins::Base

  def index
    @words = Word.all.page(params[:page]).per(5)
    @words = @words.where('title LIKE ?', "%#{params[:search]}%") if params[:search].present?
  end

  def show
    @word = Word.find(params[:id])
  end

  def edit
    @word = Word.find(params[:id])
  end

  def update
    @word = Word.find(params[:id])
    if @word.update(word_params)
      redirect_to words_path, notice: "「ひとこと」を編集しました"
    else
      render :edit
    end
  end

  def destroy
    word = Word.find(params[:id])
    word.destroy
    redirect_to words_path, notice:"「ひとこと」を削除しました"
  end

  private
  
  def word_params
    params.require(:word).permit(:title, :body)
  end

end
