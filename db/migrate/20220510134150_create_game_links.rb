class CreateGameLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :game_links do |t|
      
      t.string :link_title
      t.string :link

      t.timestamps
    end
  end
end
