class BalancesController < ApplicationController
  def index
    @customers = Customer.all 
    @grafo = {}
    @customers.each do |customer|
      @grafo[customer.name] = customer.total_loans
    end
    @grafo   
  end 
end
