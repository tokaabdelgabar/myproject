class AddParagraph3ToTabs < ActiveRecord::Migration[5.2]
  def change
    add_column :tabs, :paragraph3, :string
  end
end
