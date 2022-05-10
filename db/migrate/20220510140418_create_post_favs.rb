class CreatePostFavs < ActiveRecord::Migration[6.1]
  def change
    create_table :post_favs do |t|

      t.timestamps
    end
  end
end
