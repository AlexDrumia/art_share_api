class CreateArtworkShares < ActiveRecord::Migration[5.2]
  def change
    create_join_table :artwork_id, :viewer_id do |t|
      t.integer :artwork_id, null: false
      t.integer :viewer_id, null: false
      t.index :artwork_id
      t.index :viewer_id

      t.timestamps
    end
  end
end
