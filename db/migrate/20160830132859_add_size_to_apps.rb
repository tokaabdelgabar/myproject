class AddSizeToApps < ActiveRecord::Migration
  def change
    add_column :apps, :size, :decimal
  end
end
