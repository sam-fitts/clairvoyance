class ProjectsController < ApplicationController
  def index
    @user = current_user
    @projects = Project.all
    if @user.agency == true

      if params[:tags] == ''
        @projects
      elsif params[:tags]
        @projects  = Project.where('tags ilike ?', params[:tags])
      else
        @projects

    end
  else
    redirect_to profile_path
  end
  end

  def show
    @project = Project.find(params[:id])
    @proposals = Proposal.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @user = current_user
    @project.business_id = @user.id
    if @project.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(params[:project])
    @projects.save
  end

  private

  def project_params
    params.require(:project).permit(:budget, :business_id, :tags, :name, :duration, :difficulty, :goal, :target_audience,  :info,  :current_tools,  :problems, :metrics, :visiting, :season, :in_house, :agencies, :non_profit, :current_metrics, :values, :tactic)
  end

end
