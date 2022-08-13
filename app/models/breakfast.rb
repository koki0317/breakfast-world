class Breakfast < ApplicationRecord
  validates :name, presence: true
  has_many :favorites
  validates :description, presence: true
end
