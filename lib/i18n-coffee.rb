module I18n
  module Coffee
    DEFAULT_TRANSLATIONS_ROOT = :javascripts

    # Rails engine
    class Engine < Rails::Engine
      config.before_configuration do
        config.i18n_js_root = I18n::Coffee::DEFAULT_TRANSLATIONS_ROOT
      end
    end

    # Translation
    def self.translations
      { translations_root => I18n.t(translations_root) }
    end

    def self.translations_root
      Rails.configuration.i18n_js_root
    end
  end
end
