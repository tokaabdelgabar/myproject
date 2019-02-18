class AddAppIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :app_id, :integer
  end
end
