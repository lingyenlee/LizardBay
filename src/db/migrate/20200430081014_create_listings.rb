class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :title
      t.integer :price
      t.text :description
      t.integer :age
      t.integer :deposit
      t.string :city
      t.string :state
      t.integer :sex
      t.text :diet
      t.references :breed, foreign_key: true
      t.timestamps
    end
  end
end
