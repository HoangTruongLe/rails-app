# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.compile = true

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( application-admin.js )
Rails.application.config.assets.precompile += %w( application-index.js )
Rails.application.config.assets.precompile += %w( application-shared.js )

Rails.application.config.assets.precompile += %w( application-admin.css )
Rails.application.config.assets.precompile += %w( application-index.css )
Rails.application.config.assets.precompile += %w( application-shared.css )
Rails.application.config.assets.precompile += %w( application-authentication.css )