class RemoveDesciptionFromAboutUs < ActiveRecord::Migration[5.2]
  def change
    remove_column :about_us, :description, :string
  end
end
