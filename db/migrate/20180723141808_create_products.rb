class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.string :category
      t.string :price
      t.string :imgURL
      t.string :lightURL
      t.string :medURL
      t.string :darkURL
      t.string :vidURL
      t.timestamps
    end
  end
end
