class RemovePictureUpdatedAtFromNotification < ActiveRecord::Migration
  def change
    remove_column :notifications, :picture_updated_at, :datetime
  end
end
