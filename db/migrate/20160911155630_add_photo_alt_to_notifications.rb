class AddPhotoAltToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :photo_alt, :string
  end
end
