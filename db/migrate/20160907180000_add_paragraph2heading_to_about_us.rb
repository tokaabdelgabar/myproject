class AddParagraph2headingToAboutUs < ActiveRecord::Migration
  def change
    add_column :about_us, :paragraph2heading, :string
  end
end
