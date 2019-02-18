class AddImage2AltToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :image2_alt, :string
  end
end
