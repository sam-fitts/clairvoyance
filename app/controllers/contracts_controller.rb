class ContractsController < ApplicationController
  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(contract_params)
    @user = current_user
    @contract.user = @user
    if @contract.save
      redirect_to contract_path(@contract)
    else
      @contract = Contract.all
      render 'users/show'
    end
  end

  private

  def contract_params
    params.require(:project).permit(:proposal_id, :business_id, :amount)
  end
end
