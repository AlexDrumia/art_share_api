class CreateJoinTableArtworkViewer < ActiveRecord::Migration[5.2]
  def change
    create_join_table :artworks, :viewers, table_name: :artwork_shares do |t|
      t.index :artwork_id
      t.index :viewer_id
    end
  end
end
