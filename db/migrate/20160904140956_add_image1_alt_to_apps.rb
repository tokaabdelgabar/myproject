class AddImage1AltToApps < ActiveRecord::Migration
  def change
    add_column :apps, :image1_alt, :string
  end
end
