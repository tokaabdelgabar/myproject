class AddAttachmentImage5ToApps < ActiveRecord::Migration[5.2]
  def self.up
    change_table :apps do |t|
      t.attachment :image5
    end
  end

  def self.down
    remove_attachment :apps, :image5
  end
end
