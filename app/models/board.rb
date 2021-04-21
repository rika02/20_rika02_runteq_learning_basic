class Board < ApplicationRecord
  validates :title, :body, presence: true
  validates :title, length: { maximum: 255 }
  validates :body, length: { maximum: 65_535 }

  belongs_to :user
end
