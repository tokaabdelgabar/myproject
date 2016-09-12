class AddImageAltToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :image_alt, :string
  end
end
