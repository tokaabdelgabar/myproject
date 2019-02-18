class RemovePhotoAltFromNotifications < ActiveRecord::Migration[5.2]
  def change
    remove_column :notifications, :photo_alt, :string
  end
end
