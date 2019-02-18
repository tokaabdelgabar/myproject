class AddParagraph3contentToAboutUs < ActiveRecord::Migration[5.2]
  def change
    add_column :about_us, :paragraph3content, :string
  end
end
