class AddReferencesToApplications < ActiveRecord::Migration[5.0]
  def change
    add_reference :applications, :user, foreign_key: true
  end
end
