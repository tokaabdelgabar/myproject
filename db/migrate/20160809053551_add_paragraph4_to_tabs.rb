class AddParagraph4ToTabs < ActiveRecord::Migration
  def change
    add_column :tabs, :paragraph4, :string
  end
end
