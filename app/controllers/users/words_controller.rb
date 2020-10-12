class Users::WordsController < Users::Base

  def index
    @words = Word.all
    @month_words = Word.where(updated_at: Date.today.all_month)
    @user = current_user
    @users = User.all
  end

  def new
    @word = Word.new
  end

  def show
    @word = Word.find(params[:id])
  end

  def create
    @word = Word.create(word_params)
    @word.user_id = current_user.id
    if @word.save
      redirect_to word_path(@word.id),notice: "「ひとこと」を記録できました！　あしたも「ひとこと」を記録しよう！"
    else
      @words = Word.all
      @user = current_user
      render :new
    end
  end

  def edit
    @word = Word.find(params[:id])
    if @word.user == current_user
      render :edit
    else
      redirect_to words_path
    end
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
    params.require(:word).permit(:title, :body, :start_time)
  end

end
