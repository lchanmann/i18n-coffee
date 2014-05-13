Rails.application.routes.draw do
  # GET /translations
  get '/translations' => 'translations#index'
end
