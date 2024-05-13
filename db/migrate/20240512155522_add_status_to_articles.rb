class AddStatusToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :status , :string
    change_column_default :articles, :status, "public"
  end
end
