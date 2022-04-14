class RenameCommentColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :comment, :introduction
  end
end
