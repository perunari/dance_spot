class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.text :content, null: false
      t.date :day, null: false
      t.integer :genre_id, foreign_key: true, null: false
      t.integer :user_id, foreign_key: true, null: false


      t.timestamps
    end
  end
end
