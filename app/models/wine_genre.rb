class WineGenre < ApplicationRecord

  has_many :wines
  belongs_to :genre

end
