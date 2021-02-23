# Where the I18n library should search for translation files

I18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]

# Whitelist locales available for the application

I18n.available_locales = [:en, :es, :eo, :'pt-BR']