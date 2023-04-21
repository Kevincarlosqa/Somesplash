class Category < ApplicationRecord
  has_many :photos, dependent: :nullify
end
