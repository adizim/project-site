class AddCategoryToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :category, :string
  end
end
