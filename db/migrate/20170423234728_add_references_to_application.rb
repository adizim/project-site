class AddReferencesToApplication < ActiveRecord::Migration[5.0]
  def change
    add_reference :applications, :project, foreign_key: true
  end
end
