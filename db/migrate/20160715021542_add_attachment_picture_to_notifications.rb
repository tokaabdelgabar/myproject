class AddAttachmentPictureToNotifications < ActiveRecord::Migration[5.2]
  def self.up
    change_table :notifications do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :notifications, :picture
  end
end


