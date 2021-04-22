class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.string :id_customer, null: false
      t.float :balance_paid
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end