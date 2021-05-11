class User < ApplicationRecord
  has_many :stories
  has_many :members
  has_many :teams, through: :members

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
