class @I18n
  constructor: (@translations = {}) ->

  @translate: (name, options) ->
    window.i18n.translate name, options unless window.i18n is undefined

  translate: (name, options) =>
    result = @_getRawTranslation result ? @translations, text for text in name.split '.'
    result = result.replace new RegExp("%{" + key + "}", 'g'), value for key, value of options
    result ? text

  _getRawTranslation: (dataset, text) ->
    dataset[text]

$.get "/translations", (data) ->
  window.i18n = new I18n data

window.translate = window.t = I18n.translate

