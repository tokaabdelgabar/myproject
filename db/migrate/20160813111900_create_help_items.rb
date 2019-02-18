class CreateHelpItems < ActiveRecord::Migration[5.2]
  def change
    create_table :help_items do |t|
      t.string :heading1
      t.string :heading2
      t.string :title1
      t.string :title2
      t.string :bullet_heading
      t.string :bullet1
      t.string :bullet2
      t.string :bullet3
      t.string :bullet5

      t.timestamps null: false
    end
  end
end
