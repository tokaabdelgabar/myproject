class AddDisclaimerIdToTabs < ActiveRecord::Migration
  def change
    add_column :tabs, :disclaimer_id, :integer
  end
end
