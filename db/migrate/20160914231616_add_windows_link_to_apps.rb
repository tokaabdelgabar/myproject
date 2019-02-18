class AddWindowsLinkToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :windows_link, :string
  end
end
