class Photo < ApplicationRecord
  has_one_attached :image
  belongs_to :category, counter_cache: true, optional: true
  validates :title, presence: true, uniqueness: true
  has_many :comments, as: :commentable, dependent: :destroy
end
