class Book < ActiveRecord::Base
	belongs_to :user
	belongs_to :situation
	has_many :comments


	#Les restrictions
	validates :title, presence: true, :length => { minimum: 5 ,message: "Is too short, minimum 5 characters."} , 
	uniqueness: {message: "The title of the book must be unique."}
	validates :author, presence: true, :length => { minimum: 5 ,message: "Is too short, minimum 5 characters."}
	validates :synopsis, presence: true, :length => { minimum: 5 ,message: "Is too short, minimum 5 characters."}  
	validates :note, :inclusion => {:in => (0..10), message: "The note of the book must be beetween 0 and 10."} 
	
	#Les scopes
	scope :available, -> { where(user_id: nil) }
	scope :reserved, -> { where(situation_id: 2) } #situation_id: 2 correspond aux livres réservés

	#Les covers
	has_attached_file :cover, 
	 	:styles => { 
	 	 :medium => "400x200>", 
	 	 :thumb => "100x50#" 
	 	}, 
	 	:default_url => "/images/:style/missing.png"

	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end