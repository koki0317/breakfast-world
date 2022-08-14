class Breakfast < ApplicationRecord
  validates :name, presence: true
  has_many :favorites
  # , dependent: :destroy
end
