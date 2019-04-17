class Post < ApplicationRecord
  belongs_to :location
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: {in: 3..40}, uniqueness: true
  validates :description, presence: true, length: {in: 3..500}

  accepts_nested_attributes_for :location

  def location_attributes=(location_attr)
    if !location_attr[:city].blank? && !location_attr[:country].blank?
      self.location = Location.find_or_create_by(location_attr)
    end
  end



end
