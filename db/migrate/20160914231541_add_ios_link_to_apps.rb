class AddIosLinkToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :ios_link, :string
  end
end
