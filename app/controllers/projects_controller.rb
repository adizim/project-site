class ProjectsController < ApplicationController
	def index
		if params[:category]
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
	end

	def create
		@project = Project.new(project_params)
		@project.save
		redirect_to project_path(@project.id)
	end

	private
		def project_params
			params.require(:project).permit(:title, :summary, :link, :image, :category, :tag_list)
		end 
end
