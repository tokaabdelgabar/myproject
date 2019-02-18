class AddParagraph1contentToAboutUs < ActiveRecord::Migration[5.2]
  def change
    add_column :about_us, :paragraph1content, :string
  end
end
