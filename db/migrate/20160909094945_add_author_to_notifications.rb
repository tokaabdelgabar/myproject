class AddAuthorToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :author, :string
  end
end
