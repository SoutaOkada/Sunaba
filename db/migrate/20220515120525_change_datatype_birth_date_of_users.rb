class ChangeDatatypeBirthDateOfUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :birth_date, :date, null: false
  end
end
