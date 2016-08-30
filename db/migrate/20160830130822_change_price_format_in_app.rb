class ChangePriceFormatInApp < ActiveRecord::Migration
def up
   change_column :apps, :price_pro, :decimal
  end

  def down
   change_column :apps, :price_pro, :string
  end
end
