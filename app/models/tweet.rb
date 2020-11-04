class Tweet < ApplicationRecord
  validates :body, presence: true
  validates :body, length: { maximum: 280 }
  belongs_to :user
  has_one_attached :image
end
