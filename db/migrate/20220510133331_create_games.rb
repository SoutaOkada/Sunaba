class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|

      t.string :game_title
      t.boolean :is_active, null: false, default: true

      t.timestamps
    end
  end
end
