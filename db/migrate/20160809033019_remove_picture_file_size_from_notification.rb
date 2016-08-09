class RemovePictureFileSizeFromNotification < ActiveRecord::Migration
  def change
    remove_column :notifications, :picture_file_size, :integer
  end
end
