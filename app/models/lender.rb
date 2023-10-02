class Lender < ApplicationRecord
  has_many :loans, dependent: :destroy
  has_many :borrowers, through: :loans, class_name: "User"
end
