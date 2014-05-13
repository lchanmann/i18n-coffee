i18n-coffee
===========

Client Side Localisation for Rails


Usage
-----

In your Gemfile add

`gem 'i18n-coffee', '~> 0.1.0'`


Setup locale translations
-------------------------

By default, it looks for `javascripts` node in your {locale}.yml.

**For example**

<pre><code>
# locales/en.yml
en:
  javascripts:
    hello: "Hello"
</code></pre>


On the client-side
------------------

You can try in Firebug or Chrome developer tools with

`window.t('javascripts.hello'); // "Hello"`

based on `I18n.locale` in Rails it will load the corresponding translations from your locale files.




