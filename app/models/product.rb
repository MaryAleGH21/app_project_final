class Product < ApplicationRecord
  has_many :loans, through: :loan_products
  has_many :loan_products
end
