class RemoveOperatingsystemIdFromApps < ActiveRecord::Migration[5.2]
  def change
    remove_column :apps, :operatingsystem_id, :integer
  end
end
