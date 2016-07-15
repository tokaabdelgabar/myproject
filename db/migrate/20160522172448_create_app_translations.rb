class CreateAppTranslations < ActiveRecord::Migration
	def self.up
		App.create_translation_table!({
			description: :string,
			# content: :text 
			}, 
			{migrate_data: true })
  end

  def self.down
    App.drop_translation_table! migrate_data: true
  end
end
