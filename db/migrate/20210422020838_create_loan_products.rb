class CreateLoanProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :loan_products do |t|
      t.float :quantity_products
      t.float :total_products
      t.references :loan, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
