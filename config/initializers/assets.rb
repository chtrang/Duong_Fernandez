# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w('bootstrap.min.css')
Rails.application.config.assets.precompile += %w( *.css.sass )
Rails.application.config.assets.precompile += %w( *.css.scss )
Rails.application.config.assets.precompile += %w( *.css )
Rails.application.config.assets.precompile += %w( *.js )
Rails.application.config.assets.precompile += %w( *.js.coffee )
Rails.application.config.assets.precompile += %w( *.js.coffee.erb )
Rails.application.config.assets.precompile += ['bootstrap.min.js', 'bootstrap-theme.min.css', 'bootstrap.min.css', 'simple_form.css.scss', 'user_menus.css.scss']