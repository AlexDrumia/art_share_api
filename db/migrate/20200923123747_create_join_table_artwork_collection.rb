class CreateJoinTableArtworkCollection < ActiveRecord::Migration[5.2]
  def change
    create_join_table :artworks, :collections do |t|
      t.index [:artwork_id, :collection_id], unique: true
      t.timestamps null: false
    end
  end
end
