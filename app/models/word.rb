class Word < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { in: 1..10 }
  validates :body, presence: true, length: { in: 1..30 }
  
end
