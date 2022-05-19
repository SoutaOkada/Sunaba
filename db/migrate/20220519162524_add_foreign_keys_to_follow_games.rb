class AddForeignKeysToFollowGames < ActiveRecord::Migration[6.1]
  def change
    add_reference :follow_games, :game, foreign_key: true
    add_reference :follow_games, :user, foreign_key: true
  end
end
