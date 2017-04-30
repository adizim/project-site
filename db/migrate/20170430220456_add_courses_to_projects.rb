class AddCoursesToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :courses, :string
  end
end
