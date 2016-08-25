class FixColumnTitle < ActiveRecord::Migration
  def change
  	rename_column :help_items, :heading2, :heading
  end
end
