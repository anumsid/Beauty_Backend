class User < ApplicationRecord
  has_many :reviews
  has_secure_password

  validates :username, :first_name, :last_name, presence: true
  validates :username, uniqueness: true
  validates :password, length: {minimum:6, maximum: 18}, on: :create
  validates :password, presence: true
  validates :email, uniqueness: true, allow_nil: true
end
