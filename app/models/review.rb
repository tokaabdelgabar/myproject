class Review < ActiveRecord::Base

	validates :user_id, :uniqueness => { :scope => :app_id,
    :message => "Users may only write one review per product." }

    before_save :default_values
   
    def default_values
    self.comment = comment.presence || 'Comment not available'
    end

	belongs_to :app, required: true
	belongs_to :user, required: true

end
