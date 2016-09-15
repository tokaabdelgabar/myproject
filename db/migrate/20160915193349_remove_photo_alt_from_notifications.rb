class RemovePhotoAltFromNotifications < ActiveRecord::Migration
  def change
    remove_column :notifications, :photo_alt, :string
  end
end
