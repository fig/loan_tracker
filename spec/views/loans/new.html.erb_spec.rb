require 'rails_helper'

RSpec.describe "loans/new", type: :view do
  before(:each) do
    assign(:loan, Loan.new(
      lender: nil,
      amount: "9.99",
      purpose: "MyString"
    ))
  end

  it "renders new loan form" do
    render

    assert_select "form[action=?][method=?]", loans_path, "post" do

      assert_select "input[name=?]", "loan[lender_id]"

      assert_select "input[name=?]", "loan[amount]"

      assert_select "input[name=?]", "loan[purpose]"
    end
  end
end
