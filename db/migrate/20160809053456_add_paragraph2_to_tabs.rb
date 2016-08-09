class AddParagraph2ToTabs < ActiveRecord::Migration
  def change
    add_column :tabs, :paragraph2, :string
  end
end
