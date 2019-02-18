class RemoveTypeFromApps < ActiveRecord::Migration[5.2]
  def change
    remove_column :apps, :type, :string
  end
end
