source 'https://rubygems.org'

ruby '2.2.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.8'

#modifie
group :development do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
end


# Use SCSS for stylesheets
#gem 'sass-rails', '~> 4.0.3'
gem 'sass-rails', '~> 5.0', '>= 5.0.4'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.3', '>= 2.3.2'

#modifie
group :doc do
	# bundle exec rake doc:rails generates the API under doc/api.
	gem 'sdoc', '~> 0.4.0', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]

# gem ajoutés
gem 'rails-i18n', '~> 4.0', '>= 4.0.6'
gem 'simple_form', '~> 3.2'
gem 'country-select', '~> 1.1', '>= 1.1.1'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.5.1'
gem 'cucumber-rails', :require => false
gem 'cucumber', '~> 2.1'
#gem 'bcrypt-ruby', '~> 3.1', '>= 3.1.5'
gem 'bcrypt', '~> 3.1', '>= 3.1.10'
gem 'devise', '~> 3.5', '>= 3.5.2'
gem 'paperclip'
gem 'builder'

# group :production do
# 	#use PostgreSQL as the database for Active Record
# 	gem 'pg', '~> 0.18.4'
# end

group :production do
	gem 'rails_12factor' # Heroku
end

group :test, :development do
	# RSpec
	gem 'rspec-rails',      ">= 2.0.0.beta"
	gem 'rspec', '~> 3.3'
	gem 'factory_girl_rails', '~> 4.5'
	gem 'capybara', '~> 2.5'
	gem 'email_spec', '~> 1.6'
end
