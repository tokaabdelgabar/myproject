class RemoveTypeFromApps < ActiveRecord::Migration
  def change
    remove_column :apps, :type, :string
  end
end
