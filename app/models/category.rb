class Category < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :title, presence: true, length: { minimum: 2, maximum: 30 }
  validates :description, presence: true, length: { minimum: 5, maximum: 120 }
end
