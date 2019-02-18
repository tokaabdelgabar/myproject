class AddAttachmentImage4ToApps < ActiveRecord::Migration[5.2]
  def self.up
    change_table :apps do |t|
      t.attachment :image4
    end
  end

  def self.down
    remove_attachment :apps, :image4
  end
end
