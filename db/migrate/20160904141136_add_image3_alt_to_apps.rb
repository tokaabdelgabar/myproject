class AddImage3AltToApps < ActiveRecord::Migration
  def change
    add_column :apps, :image3_alt, :string
  end
end
