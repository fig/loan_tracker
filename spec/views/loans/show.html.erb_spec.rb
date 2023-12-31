require 'rails_helper'

RSpec.describe "loans/show", type: :view do
  before(:each) do
    assign(:loan, Loan.create!(
      lender: nil,
      amount: "9.99",
      purpose: "Purpose"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Purpose/)
  end
end
