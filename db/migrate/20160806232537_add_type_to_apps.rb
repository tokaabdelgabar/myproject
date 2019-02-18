class AddTypeToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :type, :string, :after => :name
  end
end
