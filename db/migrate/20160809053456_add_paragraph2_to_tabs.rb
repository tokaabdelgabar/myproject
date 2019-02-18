class AddParagraph2ToTabs < ActiveRecord::Migration[5.2]
  def change
    add_column :tabs, :paragraph2, :string
  end
end
