class AddAppImgAltToApps < ActiveRecord::Migration
  def change
    add_column :apps, :app_img_alt, :string
  end
end
