class RemoveHeading1FromHelpItems < ActiveRecord::Migration
  def change
    remove_column :help_items, :heading1, :string
  end
end
