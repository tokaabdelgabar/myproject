class AddDisclaimerIdToTabs < ActiveRecord::Migration[5.2]
  def change
    add_column :tabs, :disclaimer_id, :integer
  end
end
