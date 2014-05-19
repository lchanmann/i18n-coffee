#i18n-coffee

Client Side Localisation for Rails

[![Gem Version](https://badge.fury.io/rb/i18n-coffee@2x.png)](http://badge.fury.io/rb/i18n-coffee)

##Usage

In your Gemfile add

    gem 'i18n-coffee', '~> 0.1.3'

##Setup locale translations

By default, it looks for `javascripts` node in your {locale}.yml.

    # config/locales/en.yml
    en:
      javascripts:
        hello: "Hello"

##On the client-side

In your `app/asssets/javascripts/application.js` file include i18n

```javascript
//= require i18n
```

You can now try use `window.translate` or `window.t` for translation lookup.

```javascript
window.t('javascripts.hello'); // "Hello"
```

Based on `I18n.locale` in Rails, it will load the corresponding translations from your locale files.

###Passing variables to translation

You can use variables to generate dynamic content in the client-side translations the same way that Rails does.

```javascript
window.t('javascripts.greeting', { name: "Mann" });
```

    # config/locales/en.yml
    en:
      javascripts:
        greeting: "Hello %{name}!"
        
##Change javascript translations root

You can choose a different root node as the translations.

    # config/locales/en.yml
    en:
      views:
        home:
          title: "Hello world!"

To select `views.home` as translation root:

    # config/application.rb
    config.i18n_translations_root = 'views.home'

The translation root setting = `views.home` in `config/application.rb` will become `views_home` in client-side lookup key.  

```javascript
window.t('views_home.title'); // "Hello world!"
```
