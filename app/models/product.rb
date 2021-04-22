class Product < ApplicationRecord
  has_many :loans, through: :loan_products
end
