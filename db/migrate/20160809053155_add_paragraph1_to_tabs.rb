class AddParagraph1ToTabs < ActiveRecord::Migration[5.2]
  def change
    add_column :tabs, :paragraph1, :string
  end
end
