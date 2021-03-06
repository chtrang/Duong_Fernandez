class ContactsController < ApplicationController

	def contact
		@contact = Contact.new
		@contacts = Contact.all
	end

	def create
		@contact = Contact.new(contact_params)

		if @contact.save
			redirect_to contactUs_path, notice: I18n.t('Mail_sent')
	  		ContactMailer.contact_email(@contact).deliver
		else
			render text: 'Error!'
		end	
	end

	private

	def contact_params
		params.require(:contact).permit(:name, :email, :comment)
	end
end