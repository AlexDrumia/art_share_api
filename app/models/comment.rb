class Comment < ApplicationRecord
  validates :body, presence: true

  belongs_to :author, class_name: :User, foreign_key: :user_id
  belongs_to :artwork

  has_many :likes, as: :likeable, dependent: :destroy
  has_many :likers, through: :likes, source: :liker
end
