class Post < ApplicationRecord
  belongs_to :location
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: {in: 3..15}, uniqueness: true
  validates :description, presence: true, length: {in: 3..500}

  
end
