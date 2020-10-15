class Comment < ApplicationRecord

  belongs_to :user  # Comment.userでコメントの所有者を取得
  belongs_to :word  # Comment.wordでそのコメントがされた投稿を取得

  validates :body, presence: true, length: { maximum: 50 }

end
