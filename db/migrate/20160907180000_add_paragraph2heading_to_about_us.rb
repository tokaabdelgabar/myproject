class AddParagraph2headingToAboutUs < ActiveRecord::Migration[5.2]
  def change
    add_column :about_us, :paragraph2heading, :string
  end
end
