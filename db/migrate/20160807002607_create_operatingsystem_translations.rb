class CreateOperatingsystemTranslations < ActiveRecord::Migration[5.2]
def self.up
		Operatingsystem.create_translation_table!({
			name: :string,
			# content: :text 
			}, 
			{migrate_data: true })
  end
  def self.down
    Operatingsystem.drop_translation_table! migrate_data: true
  end

end




  