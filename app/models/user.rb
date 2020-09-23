class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :artworks, primary_key: :id, foreign_key: :artist_id, dependent: :destroy
  has_many :artwork_shares, foreign_key: :viewer_id, dependent: :destroy
  has_many :shared_artworks, through: :artwork_shares, source: :artwork
  has_many :comments, dependent: :destroy
  has_many :likes, inverse_of: :liker, dependent: :destroy  
  has_many :liked_comments, through: :likes, source: :likeable, source_type: :Comment
  has_many :liked_artworks, through: :likes, source: :likeable, source_type: :Artwork
  has_many :collections, dependent: :destroy
end
