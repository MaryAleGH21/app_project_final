class CreateLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :loans do |t|
      t.float :total_loan, default: 0
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
