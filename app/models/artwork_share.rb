class ArtworkShare < ApplicationRecord
  validates :artwork_id, presence: true, uniqueness: { scope: :viewer_id, message: "cannot be shared with a user more than once" }
  validates :viewer_id, presence: true

  belongs_to :artwork, foreign_key: :artwork_id
  belongs_to :viewer, foreign_key: :viewer_id, class_name: :User
end
