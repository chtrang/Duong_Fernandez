class Situation < ActiveRecord::Base
	has_many :books
	has_many :users, through: :books

end