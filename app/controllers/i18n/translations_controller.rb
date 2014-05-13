class I18n::TranslationsController < ApplicationController
  # GET /translations
  def index
    render json: { javascripts: I18n.t('javascripts') }
  end
end
