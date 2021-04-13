class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :last_name, null: false
      t.text :address
      t.integer :telephone

      t.timestamps
    end
  end
end
