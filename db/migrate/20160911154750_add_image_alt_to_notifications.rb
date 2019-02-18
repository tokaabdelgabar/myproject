class AddImageAltToNotifications < ActiveRecord::Migration[5.2]
  def change
    add_column :notifications, :image_alt, :string
  end
end
