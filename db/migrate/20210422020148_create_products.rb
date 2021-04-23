class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name_product, null: false
      t.integer :price, default: 0

      t.timestamps
    end
  end
end
