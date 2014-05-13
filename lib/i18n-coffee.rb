module I18n
  module Coffee
    class Engine < Rails::Engine
      config.i18n_js_root = Rails.configuration.i18n_js_root || 'javascripts'
    end
  end
end
