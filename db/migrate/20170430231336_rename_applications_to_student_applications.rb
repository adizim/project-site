class RenameApplicationsToStudentApplications < ActiveRecord::Migration[5.0]
  def change
  	rename_table :applications, :student_applications
  end
end
