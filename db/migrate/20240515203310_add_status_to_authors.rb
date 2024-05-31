class AddStatusToAuthors < ActiveRecord::Migration[7.1]
  def change
    add_column :authors, :status, :string
    change_column_default :authors, :status, "public"
  end
end
