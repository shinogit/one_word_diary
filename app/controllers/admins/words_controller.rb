class Admins::WordsController < Admins::Base

  def index
    @words = Word.all
    @month_words = Word.where(updated_at: Date.today.all_month)
    @users = User.all
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

end
