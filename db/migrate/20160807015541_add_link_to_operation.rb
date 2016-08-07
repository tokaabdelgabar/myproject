class AddLinkToOperation < ActiveRecord::Migration
  def change
    add_column :operations, :link, :string
  end
end
