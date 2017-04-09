class RemoveTagsFromProjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :tags, :text
  end
end
