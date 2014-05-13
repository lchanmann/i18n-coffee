Rails.application.routes.draw do
  # GET /translations
  match '/translations' => 'i18n/translations#index', via: :get
end
