class Loan < ApplicationRecord
  belongs_to :lender
  belongs_to :borrower, class_name: "User"
end
