require 'rails_helper'

RSpec.describe "loans/edit", type: :view do
  let(:loan) {
    Loan.create!(
      lender: nil,
      amount: "9.99",
      purpose: "MyString"
    )
  }

  before(:each) do
    assign(:loan, loan)
  end

  it "renders the edit loan form" do
    render

    assert_select "form[action=?][method=?]", loan_path(loan), "post" do

      assert_select "input[name=?]", "loan[lender_id]"

      assert_select "input[name=?]", "loan[amount]"

      assert_select "input[name=?]", "loan[purpose]"
    end
  end
end
