class Category < ApplicationRecord
  has_many :photos, dependent: :nullify
  has_many :comments, as: :commentable, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

end
