class AddAuthorIdToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :authorId, :integer
  end
end
