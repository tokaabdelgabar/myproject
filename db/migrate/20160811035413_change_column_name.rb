class ChangeColumnName < ActiveRecord::Migration[5.2]
def change
rename_column :apps, :type, :detail
end
end

