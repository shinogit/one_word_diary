class Users::CommentsController < Users::Base

  before_action :ensure_correct_user,{only: [:destroy]}

  def create
    @word = Word.find(params[:word_id])
    @comment = current_user.comments.new(comment_params)
    # 上の1行は下の2行と同じ意味で簡略化してコーディングしたもの
    # comment = Comment.new(comment_params)
    # comment.user_id = current_user.id
    @comment.word_id = @word.id
    if @comment.save
      redirect_to word_path(@word), notice: "コメントを登録しました"
    else
      @word = Word.find(params[:word_id])
      @comment = Comment.new
      render template: 'users/words/show', notice: "コメントが投稿できませんでした" # フラッシュメッセージが表示されない
    end
  end

  def destroy
    Comment.find_by(id: params[:id], word_id: params[:word_id]).destroy
    redirect_to word_path(params[:word_id])
  end

  def ensure_correct_user
    @comment = Comment.find_by(id: params[:id], word_id: params[:word_id])    
    if @comment.user_id != current_user.id
      flash[:notice] = "他人のコメントの編集はできません！"
      redirect_to words_path(@comment.user.id)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end
