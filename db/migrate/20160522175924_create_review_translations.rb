class CreateReviewTranslations < ActiveRecord::Migration

  def self.up
    Review.create_translation_table!({
      comment: :string,
    }, {
      migrate_data: true
    })
  end

  def self.down
    Review.drop_translation_table! migrate_data: true
  end
end
