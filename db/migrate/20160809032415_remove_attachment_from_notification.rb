class RemoveAttachmentFromNotification < ActiveRecord::Migration
  def change
    remove_column :notifications, :attachement, :picture
  end
end
