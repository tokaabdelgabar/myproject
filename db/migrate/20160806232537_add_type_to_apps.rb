class AddTypeToApps < ActiveRecord::Migration
  def change
    add_column :apps, :type, :string, :after => :name
  end
end
