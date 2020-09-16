class Like < ApplicationRecord
  belongs_to :liker, class_name: :User, foreign_key: :user_id, inverse_of: :likes
  belongs_to :likeable, polymorphic: true
end
