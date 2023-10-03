require 'rails_helper'

RSpec.describe "loans/index", type: :view do
  before(:each) do
    assign(:loans, [
      Loan.create!(
        lender: nil,
        amount: "9.99",
        purpose: "Purpose"
      ),
      Loan.create!(
        lender: nil,
        amount: "9.99",
        purpose: "Purpose"
      )
    ])
  end

  it "renders a list of loans" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Purpose".to_s), count: 2
  end
end
