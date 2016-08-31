class AddDateToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :date, :date
  end
end
