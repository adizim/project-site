class RemoveQuestionsFromProjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :questions, :text
  end
end
