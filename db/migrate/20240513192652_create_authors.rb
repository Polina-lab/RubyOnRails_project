class CreateAuthors < ActiveRecord::Migration[7.1]
  def change
    create_table :authors do |t|
      t.string :fname
      t.string :lname
      t.text :email, null: false

      t.timestamps
    end
    add_index :authors, :email, unique: true
  end
end
