class RemoveOperationFromApps < ActiveRecord::Migration
  def change
    remove_column :apps, :operation, :string
  end
end
