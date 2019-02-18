class AddSizeToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :size, :decimal
  end
end
