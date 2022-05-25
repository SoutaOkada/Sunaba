class CreatePostFavs < ActiveRecord::Migration[6.1]
  def change
    create_table :post_favs do |t|
      
      t.string :text
      t.boolean :is_active, null: false, default: true

      t.timestamps
    end
  end
end
