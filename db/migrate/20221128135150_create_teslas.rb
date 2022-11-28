class CreateTeslas < ActiveRecord::Migration[7.0]
  def change
    create_table :teslas do |t|
      t.string :model
      t.string :image_url
      t.integer :price
      t.boolean :instock
      t.string :highlights
      t.string :description

      t.timestamps
    end
  end
end
