class AddAttachmentImage3ToApps < ActiveRecord::Migration[5.2]
  def self.up
    change_table :apps do |t|
      t.attachment :image3
    end
  end

  def self.down
    remove_attachment :apps, :image3
  end
end
