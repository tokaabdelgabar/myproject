class RemovePictureContentTypeFromNotification < ActiveRecord::Migration[5.2]
  def change
    remove_column :notifications, :picture_content_type, :string
  end
end
