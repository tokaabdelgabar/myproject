class RemoveOperationFromApps < ActiveRecord::Migration[5.2]
  def change
    remove_column :apps, :operation, :string
  end
end
