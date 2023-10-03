class LendersController < ApplicationController
  before_action :authenticate_user!
  def index
    @lenders = current_user.loans
                           .joins(:lender)
                           .group(:lender_id)
                           .select(
                             "lenders.id as id",
                             "lenders.name as name",
                             "SUM(loans.amount) as total_amount",
                             "MIN(loans.due_date) as next_due",
                           )
                           .order(next_due: :asc)
  end

  def show
    @loans = current_user.loans.where(lender:).order(due_date: :asc)
  end

  def lender
    @lender ||= Lender.find(params[:id])
  end
end
