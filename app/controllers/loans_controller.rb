class LoansController < ApplicationController
  before_action :authenticate_user!
  before_action :set_loan, only: %i[edit update destroy]

  # GET /loans/new
  def new
    @loan = Loan.new
    @loan.lender = Lender.find(params[:lender]) if params[:lender].present?
  end

  # GET /loans/1/edit
  def edit
  end

  # POST /loans
  def create
    @loan = current_user.loans.new(loan_params)

    if @loan.save
      redirect_to @loan.lender, notice: "Loan was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /loans/1
  def update
    if @loan.update(loan_params)
      redirect_to @loan.lender, notice: "Loan was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /loans/1
  def destroy
    @loan.destroy!
    redirect_to loans_url, notice: "Loan was successfully destroyed.", status: :see_other
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_loan
    @loan = current_user.loans.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def loan_params
    params.require(:loan).permit(:lender_id, :amount, :due_date, :purpose)
  end
end
