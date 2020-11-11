class Wine < ApplicationRecord
  belongs_to :maker, optional: true
end
