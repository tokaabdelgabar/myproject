class CreateTabTranslations < ActiveRecord::Migration
	def self.up
		Tab.create_translation_table!({
			name: :string,
			paragraph1: :string,
			paragraph2: :string,
			paragraph3: :string,
			paragraph4: :string,
			# content: :text 
			}, 
			{migrate_data: true })
  end

  def self.down
    Tab.drop_translation_table! migrate_data: true
  end
end
