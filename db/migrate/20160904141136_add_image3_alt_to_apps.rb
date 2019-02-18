class AddImage3AltToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :image3_alt, :string
  end
end
