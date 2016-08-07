class AddPriceProToApps < ActiveRecord::Migration
  def change
    add_column :apps, :price_pro, :string
  end
end
