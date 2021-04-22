class Customer < ApplicationRecord
  has_many :payments
  has_many :loans
  validates :name, presence: true
end
