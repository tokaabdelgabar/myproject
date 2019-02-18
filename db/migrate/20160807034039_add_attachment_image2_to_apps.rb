class AddAttachmentImage2ToApps < ActiveRecord::Migration[5.2]
  def self.up
    change_table :apps do |t|
      t.attachment :image2
    end
  end

  def self.down
    remove_attachment :apps, :image2
  end
end
