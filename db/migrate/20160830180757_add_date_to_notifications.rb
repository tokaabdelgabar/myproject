class AddDateToNotifications < ActiveRecord::Migration[5.2]
  def change
    add_column :notifications, :date, :date
  end
end
