class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :starts
      t.date :ends
      t.text :description
      t.text :address_1
      t.text :address_2
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :lat
      t.integer :lon

      t.timestamps null: false
    end
  end
end
