class AddYoutubeLinkToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :youtube_link, :string
  end
end
