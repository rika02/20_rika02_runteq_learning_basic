class Board < ApplicationRecord
  belongs_to :user

  validates :title, :body, presence: true
  validates :title, length: { maximum: 255 }
  validates :body, length: { maximum: 65_535 }
end
