class AddPictureAltToAboutUs < ActiveRecord::Migration[5.2]
  def change
    add_column :about_us, :picture_alt, :string
  end
end
