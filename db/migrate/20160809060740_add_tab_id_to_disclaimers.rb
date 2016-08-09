class AddTabIdToDisclaimers < ActiveRecord::Migration
  def change
    add_column :disclaimers, :tab_id, :integer
  end
end
