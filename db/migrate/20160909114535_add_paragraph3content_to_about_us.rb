class AddParagraph3contentToAboutUs < ActiveRecord::Migration
  def change
    add_column :about_us, :paragraph3content, :string
  end
end
