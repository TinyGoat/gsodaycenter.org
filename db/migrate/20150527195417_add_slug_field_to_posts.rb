class AddSlugFieldToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :slug, :string, :unique => true
    add_index :posts, :slug
  end
end
