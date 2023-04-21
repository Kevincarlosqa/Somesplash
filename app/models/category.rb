class Category < ApplicationRecord
  has_many :photos, dependent: :nullify

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
