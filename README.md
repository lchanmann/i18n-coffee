#i18n-coffee

Client Side Localisation for Rails


##Usage

In your Gemfile add

    gem 'i18n-coffee', '~> 0.1.1'

##Setup locale translations

By default, it looks for `javascripts` node in your {locale}.yml.

**For example**

    # config/locales/en.yml
    en:
      javascripts:
        hello: "Hello"

##On the client-side

In your `app/asssets/javascripts/application.js` file include i18n

```javascript
//= require i18n
```

You can now try it in Firebug or Chrome developer tools with

```javascript
window.t('javascripts.hello'); // "Hello"
```

based on `I18n.locale` in Rails it will load the corresponding translations from your locale files.

###Passing variables to translation

You can use variables to generate dynamic content in the client-side translations the same way that Rails does.

```javascript
window.t('javascripts.greeting', { name: "Mann" });
```

    # config/locales/en.yml
    en:
      javascripts:
        greeting: "Hello %{name}!"
        





