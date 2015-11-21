# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( bootstrap-material-design/dist/css/material-custom.min.css bootstrap-material-design/dist/js/ripples.min.js bootstrap-material-design/dist/js/material.min.js)
