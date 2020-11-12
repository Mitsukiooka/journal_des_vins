class Wine < ApplicationRecord

  has_one_attached :image
  belongs_to :maker, optional: true

  attr_accessor :image_blob_id

  validates :name, presence: :true
end
