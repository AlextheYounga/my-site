load "app/modules/webp_converter.rb"
require "mini_magick"

class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update, :destroy]
  before_action :restrict, except: :index

  def index
    @projects = Project.order(:position)
    @languageStats = GithubLanguage.calculateWidths
    set_meta_tags title: "Reading List",
                  site: "alextheyounger.me",
                  description: "Alex Younger - My Reading List. A list of projects that have impacted my life in some way.",
                  reverse: true,
                  og: {
                    title: "About Me",
                    description: "Alex Younger - My Reading List. A list of projects that have impacted my life in some way.",
                    type: "website",
                    image: '<%= image_path("hammock-art.png") %>',
                    reverse: true,
                  }
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def create
    @project = Project.new(project_params)
    @project.image_address = params[:project][:screen].original_filename.to_s
    @project.image_alt = "Alex Younger Projects List #{params[:project][:title]} in #{params[:project][:framework]}"
    if (@project.save)
      @project.attach_screens(params)
      flash[:notice] = "Project was successfully created"
      redirect_to projects_path
    else
      render "new"
    end    
  end

  def update
    if (@project.update(project_params))
      flash[:notice] = "Project was successfully updated"
      redirect_to projects_path
    else
      render "edit"
    end
  end

  def destroy
    @project.destroy
    flash[:notice] = "Project was successfully obliterated"
    redirect_to projects_path
  end

  private

  def restrict
    if not master_logged_in?
      redirect_to root_path
    end
  end

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(
      :title,
      :description,
      :excerpt,
      :image_address,
      :project_link,
      :image_alt,
      :framework,
      :position
    )
  end
end
