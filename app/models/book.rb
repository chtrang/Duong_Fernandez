class Book < ActiveRecord::Base
	has_many :comments
	has_many :readers, through: :comments


	#Les restrictions
	validates :title, presence: true, :length => { minimum: 5 } , 
	uniqueness: {message: "The title of the book must be unique."}
	validates :author, presence: true, :length => { minimum: 5 }
	validates :synopsis, presence: true, :length => { minimum: 5 }  
	validates :note, :inclusion => {:in => (0..10), message: I18n.t('Mark_min') } 
	
	#Les scopes
	scope :available, -> { where(situation: 1) } #situation: 1 correspond aux livres disponibles
	scope :reserved, -> { where(situation: 2) } #situation: 2 correspond aux livres réservés

	#Les covers
	has_attached_file :cover, 
	 	:styles => { 
	 	 :medium => "400x200>", 
	 	 :thumb => "100x50#" 
	 	}, 
	 	:default_url => "/images/:style/missing.png"

	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end