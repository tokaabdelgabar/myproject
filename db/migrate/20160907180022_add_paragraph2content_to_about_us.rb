class AddParagraph2contentToAboutUs < ActiveRecord::Migration
  def change
    add_column :about_us, :paragraph2content, :string
  end
end
