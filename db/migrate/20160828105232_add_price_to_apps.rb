class AddPriceToApps < ActiveRecord::Migration
  def change
    add_column :apps, :price, :decimal
  end
end
