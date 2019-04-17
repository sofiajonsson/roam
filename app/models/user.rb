class User < ApplicationRecord
  has_many :comments
  has_many :posts
  has_many :locations, through: :posts

  #many to many user relationships through follower_id and followed_id
  has_many :active_relationships, class_name: "UserRelationship", foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name: "UserRelationship", foreign_key: "followed_id", dependent: :destroy

  has_many :followed_users, through: :active_relationships, source: :followed_user
  has_many :follower_users, through: :passive_relationships, source: :follower_user

  #validations
  validates :username, uniqueness: true
  validates_length_of :password, minimum: 1
end
