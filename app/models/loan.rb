class Loan < ApplicationRecord
  before_save :set_prices
  belongs_to :customer
  has_many :loan_products
  has_many :products, through: :loan_products
  accepts_nested_attributes_for :loan_products

  private

  def set_prices
    self.loan_products.each do |product|
      product.product_price = product.product.price
    end
    self.total_loan = self.loan_products.map{|p| p.product_quantity * p.product_price}.sum   
  end
end
