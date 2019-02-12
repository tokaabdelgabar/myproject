# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( category-apps.css )
Rails.application.config.assets.precompile += %w( bootstrap.css )
#Rails.application.config.assets.precompile += %w( custom.css )
Rails.application.config.assets.precompile += %w( bootstrap.min.js )
Rails.application.config.assets.precompile += %w( modernizr-2.6.2.min.js )
#Rails.application.config.assets.precompile += %w( owl.carousel.min.js )
Rails.application.config.assets.precompile += %w( main.js )
Rails.application.config.assets.precompile += %w( dropdown.js )
Rails.application.config.assets.precompile += %w( style.min.css )
Rails.application.config.assets.precompile += %w( owl.carousel.css )
Rails.application.config.assets.precompile += %w( font-awesome.min.css )
Rails.application.config.assets.precompile += %w( jquery-1.11.1.min.js )
Rails.application.config.assets.precompile += %w( owl.carousel.min.js )
Rails.application.config.assets.precompile += %w( main.js )
#Rails.application.config.assets.precompile += %w( breadcrumbs.js )
Rails.application.config.assets.precompile += %w( backtotop.js )
#Rails.application.config.assets.precompile += %w( superfish.js )
Rails.application.config.assets.precompile += %w( jquery.etalage.min.js )

Rails.application.config.assets.precompile += %w( jquery.min.js )
Rails.application.config.assets.precompile += %w( bootstrap2.css )
Rails.application.config.assets.precompile += %w( etalage.css )
Rails.application.config.assets.precompile += %w( style2.css )
Rails.application.config.assets.precompile += %w( bootstrap-image-gallery.min.css )
Rails.application.config.assets.precompile += %w( bootstrap-image-gallery.min.js )
Rails.application.config.assets.precompile += %w( jquery-image-gallery.min.js )