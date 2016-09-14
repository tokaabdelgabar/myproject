class AddIosLinkToApps < ActiveRecord::Migration
  def change
    add_column :apps, :ios_link, :string
  end
end
