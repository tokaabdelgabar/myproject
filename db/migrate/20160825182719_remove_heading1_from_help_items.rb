class RemoveHeading1FromHelpItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :help_items, :heading1, :string
  end
end
