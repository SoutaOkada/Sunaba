class AddForeignKeysToCommentFavs < ActiveRecord::Migration[6.1]
  def change
    add_reference :comment_favs, :comment, foreign_key: true
    add_reference :comment_favs, :user, foreign_key: true
  end
end
