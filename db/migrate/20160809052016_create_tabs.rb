class CreateTabs < ActiveRecord::Migration[5.2]
  def change
    create_table :tabs do |t|
      t.string :name
      t.string :infromation

      t.timestamps null: false
    end
  end
end
