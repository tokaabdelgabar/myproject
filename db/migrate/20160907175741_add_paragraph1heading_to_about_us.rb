class AddParagraph1headingToAboutUs < ActiveRecord::Migration
  def change
    add_column :about_us, :paragraph1heading, :string
  end
end
