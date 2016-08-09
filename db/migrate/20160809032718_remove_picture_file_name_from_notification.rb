class RemovePictureFileNameFromNotification < ActiveRecord::Migration
  def change
    remove_column :notifications, :picture_file_name, :string
  end
end
