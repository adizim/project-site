class AddQuestion2ToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :question2, :text
  end
end
