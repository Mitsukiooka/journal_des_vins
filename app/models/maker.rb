class Maker < ApplicationRecord
  has_many_attached :images
  has_many :wines

  attr_accessor :image_blob_id

end
