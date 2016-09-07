class AddParagraph1contentToAboutUs < ActiveRecord::Migration
  def change
    add_column :about_us, :paragraph1content, :string
  end
end
