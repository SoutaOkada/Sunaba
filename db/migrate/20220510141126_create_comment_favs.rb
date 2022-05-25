class CreateCommentFavs < ActiveRecord::Migration[6.1]
  def change
    create_table :comment_favs do |t|

      t.timestamps
    end
  end
end
