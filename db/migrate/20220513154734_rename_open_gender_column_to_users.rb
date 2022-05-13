class RenameOpenGenderColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :open_gneder, :open_gender
  end
end
