class ProjectsController < ApplicationController

	before_action :authenticate_admin!, :except => [:show, :index]
	def index
		if params[:adminID]
			@projects = Project.where(:adminID => params[:adminID])
		elsif params[:category]
			@projects = Project.where(:category => params[:category])
		elsif params[:tag]
			@projects = Project.tagged_with(params[:tag])
		else
			@projects = Project.all
		end
	end

	def show
		@project = Project.find(params[:id])
	end 

	def new
		@project = Project.new
		@id = current_admin.id
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			flash[:success] = "New Project Created!"
			redirect_to project_path(@project.id)
		else
			render 'new'
		end
	end

	private
		def project_params
			params.require(:project).permit(:title, :summary, :link, :image, :adminID, :category, :tag_list)
		end 
end
