class AddAppImgAltToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :app_img_alt, :string
  end
end
