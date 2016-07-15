class CreateNotificationTranslations < ActiveRecord::Migration
 def up
    Notification.create_translation_table!({
      title: :string,
      content: :text
    }, {
      migrate_data: true
    })
  end

  def down
    Notification.drop_translation_table! migrate_data: true
  end
end
