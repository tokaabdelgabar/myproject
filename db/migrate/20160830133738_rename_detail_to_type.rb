class RenameDetailToType < ActiveRecord::Migration[5.2]
def change
    rename_column :apps, :detail, :type
  end
end
