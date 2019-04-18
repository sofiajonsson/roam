class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  scope :oldest_to_newest, -> { order(created_at: :asc, id: :asc) }
  default_scope {oldest_to_newest}

end
