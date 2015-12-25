class WelcomeMailer < ActionMailer::Base
	default from: 'RubyOnRails <rubyonrails654@gmail.com>'

	def welcome_email(me)
	@me = me
	mail(to: @me,
		subject: "Welcome #{@me}!")
	end
	
end	