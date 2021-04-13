class Board < ApplicationRecord
  validates :title, :body, presence: true
  validates :title, length: { maximum: 255 }
  validates :body, length: { maximum: 65535 }
end
