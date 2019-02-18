class RemovePictureFileSizeFromNotification < ActiveRecord::Migration[5.2]
  def change
    remove_column :notifications, :picture_file_size, :integer
  end
end
