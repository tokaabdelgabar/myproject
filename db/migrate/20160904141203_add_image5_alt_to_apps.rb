class AddImage5AltToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :image5_alt, :string
  end
end
