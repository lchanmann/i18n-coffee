i18n-coffee
===========

Client Side Localisation for Rails


Usage
-----

In your Gemfile add

    gem 'i18n-coffee', '~> 0.1.1'


Setup locale translations
-------------------------

By default, it looks for `javascripts` node in your {locale}.yml.

**For example**

    # locales/en.yml
    en:
      javascripts:
        hello: "Hello"


On the client-side
------------------

In your `application.js` file include i18n

```javascript
//= require i18n
```

You can now try it in Firebug or Chrome developer tools with

```javascript
window.t('javascripts.hello'); // "Hello"
```

based on `I18n.locale` in Rails it will load the corresponding translations from your locale files.




