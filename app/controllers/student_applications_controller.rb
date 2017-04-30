class StudentApplicationsController < ApplicationController

	def new
		@project = Project.find(params[:project_id])
		@student_application = StudentApplication.new
		@question1 = @project.question1
	end

	def show
		@app = StudentApplication.find(params[:id])
		@question1 = @app.project.question1
	end
end
