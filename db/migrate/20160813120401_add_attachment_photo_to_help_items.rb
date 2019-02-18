class AddAttachmentPhotoToHelpItems < ActiveRecord::Migration[5.2]
  def self.up
    change_table :help_items do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :help_items, :photo
  end
end
