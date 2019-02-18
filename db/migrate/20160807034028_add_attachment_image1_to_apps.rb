class AddAttachmentImage1ToApps < ActiveRecord::Migration[5.2]
  def self.up
    change_table :apps do |t|
      t.attachment :image1
    end
  end

  def self.down
    remove_attachment :apps, :image1
  end
end
