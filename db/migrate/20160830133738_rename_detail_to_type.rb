class RenameDetailToType < ActiveRecord::Migration
def change
    rename_column :apps, :detail, :type
  end
end
