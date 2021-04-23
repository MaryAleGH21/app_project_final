class LoanProduct < ApplicationRecord
  belongs_to :loan, optional: true
  belongs_to :product
end
