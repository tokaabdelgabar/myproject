class AddAppManagerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :app_manager, :boolean
  end
end
