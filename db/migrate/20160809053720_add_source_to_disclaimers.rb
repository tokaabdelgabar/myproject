class AddSourceToDisclaimers < ActiveRecord::Migration[5.2]
  def change
    add_column :disclaimers, :source, :string
  end
end
