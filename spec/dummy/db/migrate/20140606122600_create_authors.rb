class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :salutation
      t.string :firstname
      t.string :lastname
      t.date :birthdate
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
