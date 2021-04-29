class Customer < ApplicationRecord
  has_many :payments
  has_many :loans
  validates :name, presence: true


  def total_payments
    self.payments.reduce(0) { |suma, payment| suma += payment.balance_paid }
  end

  def total_loans
    self.loans.reduce(0) { |suma, loan| suma += loan.total_loan }
  end

  def balances
    total_loans - total_payments
  end

end


