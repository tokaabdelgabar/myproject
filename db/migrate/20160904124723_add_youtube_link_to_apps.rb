class AddYoutubeLinkToApps < ActiveRecord::Migration
  def change
    add_column :apps, :youtube_link, :string
  end
end
