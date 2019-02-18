class AddTabIdToDisclaimers < ActiveRecord::Migration[5.2]
  def change
    add_column :disclaimers, :tab_id, :integer
  end
end
