class AddImage2AltToApps < ActiveRecord::Migration
  def change
    add_column :apps, :image2_alt, :string
  end
end
