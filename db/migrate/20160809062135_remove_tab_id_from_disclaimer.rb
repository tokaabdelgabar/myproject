class RemoveTabIdFromDisclaimer < ActiveRecord::Migration[5.2]
  def change
    remove_column :disclaimers, :tab_id, :integer
  end
end

