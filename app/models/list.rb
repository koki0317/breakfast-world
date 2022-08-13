class List < ApplicationRecord
  has_many :favorites
  has_many :breakfasts, through: :favorites, dependent: :destroy
  validates :name, presence: true
  has_one_attached :photo
end
