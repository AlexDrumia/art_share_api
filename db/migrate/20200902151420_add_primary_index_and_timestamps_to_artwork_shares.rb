class AddPrimaryIndexAndTimestampsToArtworkShares < ActiveRecord::Migration[5.2]
  def change
    add_column :artwork_shares, :id, :primary_key
    add_timestamps :artwork_shares, null: true
  end
end
