class Story < ApplicationRecord
  has_many :chapters 
  has_many :characters 
  belongs_to :user
end
