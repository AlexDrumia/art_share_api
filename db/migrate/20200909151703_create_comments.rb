class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body, null: false

      t.timestamps null: false
    end

    add_reference :comments, :user, foreign_key: true, null: false, index: true
    add_reference :comments, :artwork, foreign_key: true, null: false, index: true
  end
end
