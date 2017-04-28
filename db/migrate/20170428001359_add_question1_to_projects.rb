class AddQuestion1ToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :question1, :text
  end
end
