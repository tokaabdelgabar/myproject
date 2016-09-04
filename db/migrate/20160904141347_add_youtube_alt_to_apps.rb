class AddYoutubeAltToApps < ActiveRecord::Migration
  def change
    add_column :apps, :youtube_alt, :string
  end
end
