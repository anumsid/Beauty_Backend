class User < ApplicationRecord
  has_many :reviews
  has_secure_password

  validates :username, :first_name, :last_name, presence: true
  validates :username, uniqueness: true
  validates :password, length: {minimum:6, maximum: 18}, on: :create
  validates :password_digest, presence: true
end
