class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

# is_deletedがfalseログインを禁止する
  def active_for_authentication?
    super && (self.is_deleted == false)
  end
        
  attachment :img

  has_many :words, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :contacts, dependent: :destroy

  validates :name, presence: true , length: { maximum: 10 }
  validates :nick_name, presence: true , length: { maximum: 10 }
  validates :introduction, length: { maximum: 30 }

end
