class RemoveOperatingsystemIdFromApps < ActiveRecord::Migration
  def change
    remove_column :apps, :operatingsystem_id, :integer
  end
end
