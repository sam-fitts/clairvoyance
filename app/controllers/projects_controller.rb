class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @projects = Project.new
  end

  def create
    @project = Project.new(project_params)
    @user = current_user
    @project.user = @user
    if @project.save
      redirect_to project_path(@project)
    else
      @project = Project.all
      render 'users/show'
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
    params.require(:project).permit(:budget, :business_id, :tags, :name, :duration, :difficulty)
  end

end
