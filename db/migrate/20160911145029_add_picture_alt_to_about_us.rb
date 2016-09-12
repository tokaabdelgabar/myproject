class AddPictureAltToAboutUs < ActiveRecord::Migration
  def change
    add_column :about_us, :picture_alt, :string
  end
end
