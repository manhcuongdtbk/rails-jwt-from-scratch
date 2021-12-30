Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      defaults format: :json do
        resources :locations do
          resources :recordings
        end
      end
    end
  end
end
