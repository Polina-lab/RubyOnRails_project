class ChangeDataTypeForFieldname < ActiveRecord::Migration[7.1]
  def change
    change_column(:articles, :authorId, :string)
  end
end
