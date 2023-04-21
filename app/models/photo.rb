class Photo < ApplicationRecord
  belongs_to :category, counter_cache: true, optional: true
  validates :title, presence: true
end
