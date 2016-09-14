class AddWindowsLinkToApps < ActiveRecord::Migration
  def change
    add_column :apps, :windows_link, :string
  end
end
