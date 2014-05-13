module I18n
  module Coffee
    DEFAULT_TRANSLATIONS_ROOT = 'javascripts'

    # Rails engine
    class Engine < Rails::Engine
      config.before_configuration do
        config.i18n_translations_root = I18n::Coffee::DEFAULT_TRANSLATIONS_ROOT
      end
    end

    # Translation
    def self.translations
      translations = I18n.t(translations_root)

      return translations if translations_root == '.'
      { translations_root.gsub(/\./, '_') => translations }
    end

    # translations_root value
    #   '.' = get all translations in {locale}.yml
    def self.translations_root
      Rails.configuration.i18n_translations_root.to_s
    end
  end
end
