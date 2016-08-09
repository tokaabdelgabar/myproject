class AddAttachmentPictureToNotifications < ActiveRecord::Migration
  def self.up
    change_table :notifications do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :notifications, :picture
  end
end


