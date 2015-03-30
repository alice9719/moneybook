class CreateFormms < ActiveRecord::Migration
  def change
    create_table :formms do |t|
      t.date :buyday
      t.string :title
      t.integer :price
      t.string :ps

      t.timestamps null: false
    end
  end
end
