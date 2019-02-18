class RemovePriceFromApp < ActiveRecord::Migration[5.2]
  def change
    remove_column :apps, :price, :string
  end
end
