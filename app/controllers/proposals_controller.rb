class ProposalsController < ApplicationController

  def index
    @project = Project.find(params[:project_id])
    @proposals = @project.proposals
  end

  def show
    @proposal = Proposal.find(params[:id])
    @project = Project.find(params[:project_id])

  end

  def create
    @project = Project.find(params[:project_id])
    @proposal = Proposal.new(proposal_params)
    # @user = current_user
    @proposal.agency = current_user
    @proposal.project = @project
    if @proposal.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def new
    @proposal = Proposal.new
    @project = Project.find(params[:project_id])
  end

  def edit
    @proposal = Proposal.find(params[:id])
  end

  def update
    @project = Project.find(params[:project_id])
    @proposal = Proposal.find(params[:id])
    # @proposal.update(proposal_params)
    if @proposal.update(proposal_params)
      redirect_to profile_path
    else
      render :show
    end

  end

  def destroy
    @proposal = Proposal.find(params[:id])
    @user = @proposal.user
    @proposal.destroy
    redirect_to user_path(@user)
  end

  private

  def proposal_params
    params.require(:proposal).permit(:bid_amount, :agency_id, :project_id, :description, :pdf, :pdf_cache, :accepted)
  end
end
