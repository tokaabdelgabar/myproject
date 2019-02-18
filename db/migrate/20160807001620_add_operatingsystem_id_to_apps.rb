class AddOperatingsystemIdToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :operatingsystem_id, :integer
  end
end
