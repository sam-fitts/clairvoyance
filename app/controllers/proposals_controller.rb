class ProposalsController < ApplicationController
  def index
    @proposals = Proposal.all
  end

  def show
    @proposal = Proposal.find(params[:id])
  end

  def create
    @proposal = Proposal.new(proposal_params)
    @user = current_user
    @proposal.user = @user
    if @proposal.save
      redirect_to proposal_path(@proposal)
    else
      @proposal = Proposal.all
      render 'users/show'
  end

  def new
    @proposal = Proposal.new
  end

  def edit
    @proposal = Proposal.find(params[:id])
  end

  def update
    @proposal = Proposal.find(params[:id])
    @proposal.update(params[:proposal])
    @proposals.save
  end

  def destroy
    @proposal = Proposal.find(params[:id])
    @user = @proposal.user
    @proposal.destroy
    redirect_to user_path(@user)
  end

  private

  def proposal_params
    params.require(:project).permit(:bid_amount, :agency_id, :project_id, :description)
  end
end
