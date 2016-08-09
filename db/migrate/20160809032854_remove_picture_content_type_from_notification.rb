class RemovePictureContentTypeFromNotification < ActiveRecord::Migration
  def change
    remove_column :notifications, :picture_content_type, :string
  end
end
