class Post < ApplicationRecord
  belongs_to :location
  belongs_to :user
  has_many :comments
  
end
