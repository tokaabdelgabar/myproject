class AddParagraph1ToTabs < ActiveRecord::Migration
  def change
    add_column :tabs, :paragraph1, :string
  end
end
