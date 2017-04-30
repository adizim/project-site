class AddQUestion3ToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :question3, :text
  end
end
