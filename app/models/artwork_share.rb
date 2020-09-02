class ArtworkShare < ApplicationRecord
  validates :artwork_id, presence: true, uniqueness: { scope: :viewer_id, message: "cannot be shared with a user more than once" }
  validates :viewer_id, presence: true
end
