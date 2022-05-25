class AddForeignKeysToPostFavs < ActiveRecord::Migration[6.1]
  def change
    add_reference :post_favs, :game, foreign_key: true
    add_reference :post_favs, :post, foreign_key: true
  end
end
