class AddGameIdToGameLinks < ActiveRecord::Migration[6.1]
  def change
    add_reference :game_links, :game, foreign_key: true
  end
end
