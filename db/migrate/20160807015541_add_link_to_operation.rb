class AddLinkToOperation < ActiveRecord::Migration[5.2]
  def change
    add_column :operations, :link, :string
  end
end
