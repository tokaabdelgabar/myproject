class AddPickIdToApps < ActiveRecord::Migration[5.2]
  def change
  	 add_column :apps, :pick_id, :integer
  end
end
