class AddColumnToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :text, :string
    add_column :comments, :is_active, :boolean
  end
end
