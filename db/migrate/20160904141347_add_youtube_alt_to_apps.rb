class AddYoutubeAltToApps < ActiveRecord::Migration[5.2]
  def change
    add_column :apps, :youtube_alt, :string
  end
end
