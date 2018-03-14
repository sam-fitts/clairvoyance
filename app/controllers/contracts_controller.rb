class ContractsController < ApplicationController

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(contract_params)
    @contract.user = current_user
    if @contract.save
      redirect_to contract_path(@contract)
    else
      render :new
    end
  end

  private

  def contract_params
    params.require(:contract).permit(:proposal_id, :business_id, :proposal_id, :pdf, :pdf_cache, :amount)
  end
end
