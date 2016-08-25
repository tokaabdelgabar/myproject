class RemoveTabIdFromDisclaimer < ActiveRecord::Migration
  def change
    remove_column :disclaimers, :tab_id, :integer
  end
end

