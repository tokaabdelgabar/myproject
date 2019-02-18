class AddUserIdToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :user_id, :integer
  end
end
