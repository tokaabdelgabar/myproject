class AddPhotoAltToHelpItems < ActiveRecord::Migration[5.2]
  def change
    add_column :help_items, :photo_alt, :string
  end
end
