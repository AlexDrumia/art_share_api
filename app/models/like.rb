class Like < ApplicationRecord
  validates :user_id, uniqueness: { scope: [:likeable_id, :likeable_type], message: "already liked this" }

  belongs_to :liker, class_name: :User, foreign_key: :user_id, inverse_of: :likes
  belongs_to :likeable, polymorphic: true
end
