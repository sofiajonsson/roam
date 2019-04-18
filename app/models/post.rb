class Post < ApplicationRecord
  belongs_to :location
  belongs_to :user
  has_many :comments

  scope :newest_to_oldest, -> { order(created_at: :desc, id: :desc) }
  default_scope {newest_to_oldest}

  validates :title, presence: true, length: {in: 3..40}, uniqueness: true
  validates :description, presence: true, length: {in: 3..500}

  accepts_nested_attributes_for :location

  def location_attributes=(location_attr)
    if !location_attr[:city].blank? && !location_attr[:country].blank?
      self.location = Location.find_or_create_by(location_attr)
    end
  end

  def self.feed_posts(user)
    followers = user.followed_users
    where(user_id: followers)
  end

end
