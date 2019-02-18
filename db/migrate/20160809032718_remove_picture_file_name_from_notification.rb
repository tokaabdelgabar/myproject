class RemovePictureFileNameFromNotification < ActiveRecord::Migration[5.2]
  def change
    remove_column :notifications, :picture_file_name, :string
  end
end
