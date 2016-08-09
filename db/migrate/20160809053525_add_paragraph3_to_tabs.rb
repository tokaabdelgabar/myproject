class AddParagraph3ToTabs < ActiveRecord::Migration
  def change
    add_column :tabs, :paragraph3, :string
  end
end
