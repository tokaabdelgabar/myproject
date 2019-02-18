class CreateAboutUs < ActiveRecord::Migration[5.2]
  def change
    create_table :about_us do |t|
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
