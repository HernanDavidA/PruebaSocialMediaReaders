class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments

  validates :title, presence: true, length: { minimum: 5, maximum: 100 }
  validates :content, presence: true, length: { minimum: 5, maximum: 500 }
  scope :filter_by_category, ->(category_id) { where(category_id: category_id) if category_id.present? }
end
