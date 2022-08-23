class Favorite < ApplicationRecord
  belongs_to :list
  belongs_to :breakfast
  validates :comment, length: { minimum: 3 }
  validates :breakfast_id, uniqueness: { scope: [:list_id] }
  has_one_attached :photo
end
