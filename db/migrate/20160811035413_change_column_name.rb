class ChangeColumnName < ActiveRecord::Migration
def change
rename_column :apps, :type, :detail
end
end

