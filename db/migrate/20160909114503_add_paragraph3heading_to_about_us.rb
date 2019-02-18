class AddParagraph3headingToAboutUs < ActiveRecord::Migration[5.2]
  def change
    add_column :about_us, :paragraph3heading, :string
  end
end
