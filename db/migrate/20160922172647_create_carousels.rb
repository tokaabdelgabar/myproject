class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|
	    t.string   "image1_file_name"
	    t.string   "image1_content_type"
	    t.integer  "image1_file_size"
	    t.datetime "image1_updated_at"
	    t.string   "image2_file_name"
	    t.string   "image2_content_type"
	    t.integer  "image2_file_size"
	    t.datetime "image2_updated_at"
	    t.string   "image3_file_name"
	    t.string   "image3_content_type"
	    t.integer  "image3_file_size"
	    t.datetime "image3_updated_at"
	    t.string   "image4_file_name"
	    t.string   "image4_content_type"
	    t.integer  "image4_file_size"
	    t.datetime "image4_updated_at"
	    t.string   "image5_file_name"
	    t.string   "image5_content_type"
	    t.integer  "image5_file_size"
	    t.datetime "image5_updated_at"
	    t.string   "image1_alt"
	    t.string   "image2_alt"
	    t.string   "image3_alt"
	    t.string   "image4_alt"
	    t.string   "image5_alt"
      t.timestamps null: false
    end
  end
end
