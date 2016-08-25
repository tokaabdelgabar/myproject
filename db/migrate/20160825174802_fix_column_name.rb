class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :tabs, :infromation, :information
  end
end
