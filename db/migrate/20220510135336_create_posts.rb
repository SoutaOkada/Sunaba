class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|      

      t.string :title
      t.string :post_text
      t.boolean :is_active, null: false, default: true

      t.timestamps
    end
  end
end
