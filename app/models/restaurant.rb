class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES, message:"%{value} is not a valid category" }
  has_many :reviews, dependent: :destroy
end
