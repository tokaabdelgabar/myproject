class AddParagraph2contentToAboutUs < ActiveRecord::Migration[5.2]
  def change
    add_column :about_us, :paragraph2content, :string
  end
end
