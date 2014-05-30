class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
