class Wine < ApplicationRecord

  include Enumerizable
  
  has_one_attached :image
  belongs_to :maker, optional: true
  belongs_to :genre

  scope :red, ->{ where(kind: :red) }
  scope :white, ->{ where(kind: :white) }
  scope :sparkling, ->{ where(kind: :sparkling) }
  scope :rose, ->{ where(kind: :rose) }

  attr_accessor :image_blob_id

  validates :name, presence: :true
end
