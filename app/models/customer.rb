class Customer < ApplicationRecord
  has_many :payments
  has_many :loans
  validates :name, presence: true


  def total_payments
   payments.pluck(:balance_paid).sum
  end

  def total_loans
    loans.pluck(:total_loan).sum
  end

  def balances
    total_loans - total_payments
  end

end


