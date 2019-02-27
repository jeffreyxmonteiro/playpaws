class EditCompletedInPlaydates < ActiveRecord::Migration[5.2]
  def change
    change_column :playdates, :completed, :boolean, default: false
  end
end
