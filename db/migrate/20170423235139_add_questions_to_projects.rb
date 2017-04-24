class AddQuestionsToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :questions, :text
  end
end
