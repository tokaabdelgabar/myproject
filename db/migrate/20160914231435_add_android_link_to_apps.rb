class AddAndroidLinkToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :android_link, :string
  end
end
