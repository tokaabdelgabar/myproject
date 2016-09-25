class ChangePriceFormatInApp < ActiveRecord::Migration
def change
   add_column :apps, :price_pro, :decimal
  end
end
