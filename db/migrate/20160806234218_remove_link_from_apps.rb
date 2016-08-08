class RemoveLinkFromApps < ActiveRecord::Migration
  def change
    remove_column :apps, :link, :string
  end
end
