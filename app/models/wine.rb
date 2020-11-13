class Wine < ApplicationRecord

  has_one_attached :image
  belongs_to :maker, optional: true
  belongs_to :genre

  attr_accessor :image_blob_id

  validates :name, presence: :true
end
