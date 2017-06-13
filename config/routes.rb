Rails.application.routes.draw do

  namespace :v1 do
    resources :appointments do
      collection do
        get 'search/:date', to: 'appointments#search'
      end
    end
  end
end
