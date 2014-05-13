class I18n::TranslationsController < ApplicationController
  # GET /translations
  def index
    render json: I18n::Coffee.translations
  end
end
