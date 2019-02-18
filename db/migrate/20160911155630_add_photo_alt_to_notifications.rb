class AddPhotoAltToNotifications < ActiveRecord::Migration[5.2]
  def change
    add_column :notifications, :photo_alt, :string
  end
end
