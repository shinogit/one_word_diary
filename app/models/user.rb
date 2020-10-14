class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        
  attachment :img

  has_many :words, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :contacts, dependent: :destroy

  validates :name, presence: true , length: { maximum: 20 }
  validates :nick_name, presence: true , length: { maximum: 20 }

end
