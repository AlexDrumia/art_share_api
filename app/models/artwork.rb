class Artwork < ApplicationRecord
  validates :title, presence: true, uniqueness: { scope: :artist_id, message: "a single user cannot have two artworks with the same title" }
  validates :image_url, presence: true
  validates :artist_id, presence: true

  belongs_to :user,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User
end
