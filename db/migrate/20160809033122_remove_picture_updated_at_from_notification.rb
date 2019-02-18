class RemovePictureUpdatedAtFromNotification < ActiveRecord::Migration[5.2]
  def change
    remove_column :notifications, :picture_updated_at, :datetime
  end
end
