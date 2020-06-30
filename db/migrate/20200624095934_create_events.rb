class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :address
      t.text :content
      t.date :day
      t.integer :genre_id, foreign_key: true
      t.integer :user_id, foreign_key: true


      t.timestamps
    end
  end
end
