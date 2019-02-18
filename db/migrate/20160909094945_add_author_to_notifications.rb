class AddAuthorToNotifications < ActiveRecord::Migration[5.2]
  def change
    add_column :notifications, :author, :string
  end
end
