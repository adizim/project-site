class StudentApplicationsController < ApplicationController

	def new
		@project = Project.find(params[:project_id])
		@student_application = StudentApplication.new
		@question1 = @project.question1
		@question2 = @project.question2
		@question3 = @project.question3
		@skills = @project.skills.split(" ")
		@courses = @project.courses.split(" ")
	end

	def show
		@app = StudentApplication.find(params[:id])
		@question1 = @app.project.question1
	end

	def create
		
	end

end
