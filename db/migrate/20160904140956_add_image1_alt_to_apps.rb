class AddImage1AltToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :image1_alt, :string
  end
end
