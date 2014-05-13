class I18n::TranslationsController < ApplicationController
  # GET /translations
  def index
    js_root = Rails.configuration.i18n_js_root
    render json: { js_root => I18n.t(js_root) }
  end
end
