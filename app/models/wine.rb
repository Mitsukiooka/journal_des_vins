class Wine < ApplicationRecord
  has_one_attached :image
  belongs_to :maker, optional: true
end
