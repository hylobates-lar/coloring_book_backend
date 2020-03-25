class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :title
      t.string :component
      t.string :svg_url
      t.string :national_park
      t.string :year
      t.string :location
      t.text :description
      

      t.timestamps
    end
  end
end
