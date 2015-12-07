class Book < ActiveRecord::Base
	belongs_to :user
	belongs_to :situation
	has_many :comments


	#Les restrictions
	validates :title, presence: true, :length => { minimum: 5 } , 
	uniqueness: {message: "The title of the book must be unique."}
	validates :author, presence: true, :length => { minimum: 5 }
	validates :synopsis, presence: true, :length => { minimum: 5 }  
	validates :note, :inclusion => {:in => (0..10), message: I18n.t('Mark_min') } 
	
	#Les scopes
	scope :available, -> { where(situation_id: 1) } #situation_id: 1 correspond aux livres disponibles
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