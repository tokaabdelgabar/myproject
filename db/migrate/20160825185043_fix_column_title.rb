class FixColumnTitle < ActiveRecord::Migration[5.2]
  def change
  	rename_column :help_items, :heading2, :heading
  end
end
