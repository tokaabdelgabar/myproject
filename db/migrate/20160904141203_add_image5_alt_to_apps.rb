class AddImage5AltToApps < ActiveRecord::Migration
  def change
    add_column :apps, :image5_alt, :string
  end
end
