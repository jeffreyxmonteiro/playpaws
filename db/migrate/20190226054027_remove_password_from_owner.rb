class RemovePasswordFromOwner < ActiveRecord::Migration[5.2]
  def change
    remove_column :owners, :password, :string
  end
end
