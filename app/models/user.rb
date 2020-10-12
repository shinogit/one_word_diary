class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        
  attachment :img

  has_many :words
  has_many :comments
  has_many :likes
  has_many :contacts

  validates :name, :nick_name, presence: true

end
