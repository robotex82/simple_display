class AddHomepageUrlToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :homepage_url, :string
  end
end
