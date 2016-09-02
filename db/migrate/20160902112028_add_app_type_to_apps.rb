class AddAppTypeToApps < ActiveRecord::Migration
  def change
    add_column :apps, :app_type, :string
  end
end
