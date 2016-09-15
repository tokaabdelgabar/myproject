class AddSearchDescriptionToApps < ActiveRecord::Migration
  def change
    add_column :apps, :searchDescription, :text
  end
end
