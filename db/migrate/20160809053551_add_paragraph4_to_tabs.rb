class AddParagraph4ToTabs < ActiveRecord::Migration[5.2]
  def change
    add_column :tabs, :paragraph4, :string
  end
end
