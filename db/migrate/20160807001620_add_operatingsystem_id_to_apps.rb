class AddOperatingsystemIdToApps < ActiveRecord::Migration
  def change
    add_column :apps, :operatingsystem_id, :integer
  end
end
