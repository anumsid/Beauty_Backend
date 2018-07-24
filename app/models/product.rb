class Product < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :price, presence: true
  validates :lightURL, presence: true
  validates :medURL, presence: true
  validates :darkURL, presence: true
end
