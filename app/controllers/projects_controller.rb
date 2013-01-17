class ProjectsController < ApplicationController
  def new
   @project=Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.save

      redirect_to projects_path
    else
      render 'new'
    end
  end
  #def show_plans
  #  @plans = Recurly::Plan.all
  #end
  def edit
  @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])

      redirect_to projects_path
    else
      render 'edit'
    end
  end

  def show
 @project=Project.find(params[:id])
  end

  def index
     @plans = Recurly::Plan.all
    #@projects= Project.all
  end

  def destroy
    Project.find(params[:id]).destroy
    redirect_to projects_path
  end
  def get_project
    @project=Project.find (params[:project_id])

  end

end




