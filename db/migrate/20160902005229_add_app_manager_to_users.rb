class AddAppManagerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :app_manager, :boolean
  end
end
