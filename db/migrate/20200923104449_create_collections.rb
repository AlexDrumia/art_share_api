class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.string :name, null: false
      t.timestamps null: false
    end

    add_reference :collections, :user, index: true, foreign_key: true, null: false
  end
end
