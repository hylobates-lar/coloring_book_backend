class CreateUserImages < ActiveRecord::Migration[6.0]
  def change

    create_table :user_images do |t|
      t.integer :user_id
      t.integer :image_id
      t.string :fill_colors, array: true, default: Array.new(1390).fill("white")

      t.timestamps
    end
  end
end
