class Artwork < ApplicationRecord
  validates :title, presence: true, uniqueness: { scope: :artist_id, message: "of artwork already exists for this user. A single user cannot have two artworks with the same title" }
  validates :image_url, presence: true
  validates :artist_id, presence: true

  belongs_to :artist, primary_key: :id, foreign_key: :artist_id, class_name: :User
  
  has_many :artwork_shares
  has_many :shared_viewers, through: :artwork_shares, source: :viewer
  has_many :comments, dependent: :destroy
end
