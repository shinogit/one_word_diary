class Word < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  
  validates :title, presence: true, length: { maximum: 30 }
  validates :body, presence: true, length: { maximum: 30 }
  
end
