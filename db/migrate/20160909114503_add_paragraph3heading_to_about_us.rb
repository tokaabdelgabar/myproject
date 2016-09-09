class AddParagraph3headingToAboutUs < ActiveRecord::Migration
  def change
    add_column :about_us, :paragraph3heading, :string
  end
end
