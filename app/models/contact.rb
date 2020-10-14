class Contact < ApplicationRecord

  belongs_to :user
  has_one :contact_anser

	enum anser_status: {
    回答待ち: 0,
    回答済み: 1
  }

  validates :title, :body, presence: true

end
