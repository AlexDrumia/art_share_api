class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.timestamps null: false
    end

    add_reference :likes, :user, index: true, foreign_key: true, null: false
    add_reference :likes, :likeable, polymorphic: true, index: true, null: false
  end
end
