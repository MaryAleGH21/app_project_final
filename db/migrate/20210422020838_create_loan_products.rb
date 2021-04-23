class CreateLoanProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :loan_products do |t|
      t.float :product_quantity, default: 1
      t.float :product_price, default: 0
      t.references :loan, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
