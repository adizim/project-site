class ProjectsController < ApplicationController
	def index
		if params[:category]
			@projects = Project.where(:category => params[:category])
		else
			@projects = Project.all
		end
	end
end
