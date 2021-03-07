class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
  has_one_attached :bartender
  validates :photo, presence: true
  validates :bartender, presence: true
  # validates :bartenderName, presence: true
end
