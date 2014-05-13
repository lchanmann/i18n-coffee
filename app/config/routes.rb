Rails.application.routes.draw do
  # GET /translations
  get 'translations' => 'i18n/translations#index'
end
