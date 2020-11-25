class RenameDescriprionColumnToBooks < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :book, :body
  end
end
