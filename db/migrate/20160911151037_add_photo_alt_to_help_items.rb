class AddPhotoAltToHelpItems < ActiveRecord::Migration
  def change
    add_column :help_items, :photo_alt, :string
  end
end
