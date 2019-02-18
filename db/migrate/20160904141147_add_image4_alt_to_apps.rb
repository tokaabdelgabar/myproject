class AddImage4AltToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :image4_alt, :string
  end
end
