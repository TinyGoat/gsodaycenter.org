class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title
      t.text :article
      t.boolean :draft

      t.timestamps null: false
    end
  end
end
