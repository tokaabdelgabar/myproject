class RemoveDesciptionFromAboutUs < ActiveRecord::Migration
  def change
    remove_column :about_us, :description, :string
  end
end
