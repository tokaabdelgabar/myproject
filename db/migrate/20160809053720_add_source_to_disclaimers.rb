class AddSourceToDisclaimers < ActiveRecord::Migration
  def change
    add_column :disclaimers, :source, :string
  end
end
