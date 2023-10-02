FactoryBot.define do
  factory :loan do
    value { "9.99" }
    purpose { "MyString" }
    repayment_due { "2023-10-02" }
    lender { nil }
    borrower { nil }
  end
end
