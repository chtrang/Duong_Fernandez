class ContactMailer < ActionMailer::Base
	default from: 'RubyOnRails <rubyonrails654@gmail.com>'

	def contact_email(me)
	@me = me
	mail(to: @me,
		subject: "Your comment in our Library!")
	end
	
end	