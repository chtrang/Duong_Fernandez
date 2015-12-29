class ContactMailer < ActionMailer::Base
	default from: 'RubyOnRails <rubyonrails654@gmail.com>'

	def contact_email(contact)
	@contact = contact

	mail(to: [@contact.email, "duong.elisabeth@gmail.com"],
		subject: "New comment in Library Online!")
	end
	
end	