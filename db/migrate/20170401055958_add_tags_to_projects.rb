class AddTagsToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :tags, :text
  end
end
