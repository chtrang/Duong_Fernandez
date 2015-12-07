class Comment < ActiveRecord::Base
	belongs_to :book
	has_one :user

	validates :book_id, presence: true
	
end
