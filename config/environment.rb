# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Setting Email Method
Rails.application.configure do
	config.action_mailer.delivery_method = :smtp

	config.action_mailer.smtp_settings = {
		address: "smtp.gmail.com",
		port: 587,
		domain: "41studio.com",
		authentication: "plain",
		user_name: "avid",
		password: "ur4ngAsup",
		enable_starttls_auto: true
	}
	
end
