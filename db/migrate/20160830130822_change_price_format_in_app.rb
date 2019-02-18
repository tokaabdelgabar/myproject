class ChangePriceFormatInApp < ActiveRecord::Migration[5.2]
def change
   add_column :apps, :price_pro, :decimal
  end
end
