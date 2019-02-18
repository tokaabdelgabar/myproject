class AddParagraph1headingToAboutUs < ActiveRecord::Migration[5.2]
  def change
    add_column :about_us, :paragraph1heading, :string
  end
end
