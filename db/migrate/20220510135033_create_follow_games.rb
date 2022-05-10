class CreateFollowGames < ActiveRecord::Migration[6.1]
  def change
    create_table :follow_games do |t|

      t.timestamps
    end
  end
end
