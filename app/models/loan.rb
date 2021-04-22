class Loan < ApplicationRecord
  belongs_to :customer
  has_many :products, through: :loan_products
end
