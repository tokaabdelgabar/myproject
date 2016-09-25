class RemovePriceFromApp < ActiveRecord::Migration
  def change
    remove_column :apps, :price, :string
  end
end
