class CreateNotificationTranslations < ActiveRecord::Migration[5.2]
 def self.up
    Notification.create_translation_table!({
      title: :string,
      content: :text
    }, {
      migrate_data: true
    })
  end

  def self.down
    Notification.drop_translation_table! migrate_data: true
  end
end
