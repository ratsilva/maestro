# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( AdminLTE.min.css )
Rails.application.config.assets.precompile += %w( _all-skins.min.css )
Rails.application.config.assets.precompile += %w( blue.css )
Rails.application.config.assets.precompile += %w( jquery-jvectormap-1.2.2.css )
Rails.application.config.assets.precompile += %w( datepicker3.css )
Rails.application.config.assets.precompile += %w( daterangepicker.css )
Rails.application.config.assets.precompile += %w( bootstrap3-wysihtml5.min.css )


Rails.application.config.assets.precompile += %w( jquery-2.2.3.min.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.js )
Rails.application.config.assets.precompile += %w( jquery.sparkline.min.js )
Rails.application.config.assets.precompile += %w( jquery-jvectormap-1.2.2.min.js )
Rails.application.config.assets.precompile += %w( jquery-jvectormap-world-mill-en.js )
Rails.application.config.assets.precompile += %w( jquery.knob.js )
Rails.application.config.assets.precompile += %w( daterangepicker.js )
Rails.application.config.assets.precompile += %w( bootstrap-datepicker.js )
Rails.application.config.assets.precompile += %w( bootstrap3-wysihtml5.all.min.js )
Rails.application.config.assets.precompile += %w( jquery.slimscroll.min.js )
Rails.application.config.assets.precompile += %w( fastclick.js )
Rails.application.config.assets.precompile += %w( app.min.js )
Rails.application.config.assets.precompile += %w( dashboard.js )
Rails.application.config.assets.precompile += %w( demo.js )

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
