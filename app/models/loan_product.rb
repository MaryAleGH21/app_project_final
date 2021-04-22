class LoanProduct < ApplicationRecord
  belongs_to :loan
  belongs_to :product
end
