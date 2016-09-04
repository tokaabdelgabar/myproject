class AddImage4AltToApps < ActiveRecord::Migration
  def change
    add_column :apps, :image4_alt, :string
  end
end
