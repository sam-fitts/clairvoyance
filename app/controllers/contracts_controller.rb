class ContractsController < ApplicationController

  def new
    @contract = Contract.new
    @project = Project.find(params[:project_id])
    @proposal = Proposal.find(params[:proposal_id])
  end

  def create
    @contract = Contract.new(contract_params)
    @contract.agency = current_user
    @project = Project.find(params[:project_id])
    @proposal = Proposal.find(params[:proposal_id])
    @contract.proposal = @proposal
    if @contract.save
      redirect_to profile_path
    else
      render :new
    end
  end

  private

  def contract_params
    params.require(:contract).permit(:proposal_id, :business_id, :proposal_id, :pdf, :pdf_cache, :amount)
  end
end
