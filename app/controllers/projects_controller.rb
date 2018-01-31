class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]
  def index
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new project_params

    if @project.save
      redirect_to @project, notice: "New project Created!"
    else
      render 'new', notice: "Sorry failed to create!!!"
    end
  end

  def edit
  end

  def update
    if @project.update project_params
      redirect_to @project, notice: "You Updated: #{@project.title}."
    else
      render 'edit'
    end
  end

  def show

  end

  def destroy
    @project.destroy
    redirect_to root_path
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :project_image)
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
