class AddSkillsToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :skills, :string
  end
end
