class AddAttachmentAppImgToApps < ActiveRecord::Migration[5.2]
  def self.up
    change_table :apps do |t|
      t.attachment :app_img
    end
  end

  def self.down
    remove_attachment :apps, :app_img
  end
end
