class BalancesController < ApplicationController
  def index
    @loans = Loan.all
    @products = Product.all
    @customers = Customer.all 
  end
end
