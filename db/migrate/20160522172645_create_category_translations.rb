class CreateCategoryTranslations < ActiveRecord::Migration[5.2]
  class Category < ActiveRecord::Base
    translates :name, :content
  end
  def up
    Category.create_translation_table!({
      name: :string,
      content: :text
    }, {
      migrate_data: true
    })
  end

  def down
    Category.drop_translation_table! migrate_data: true
  end
end