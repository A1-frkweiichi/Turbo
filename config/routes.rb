Rails.application.routes.draw do
  resources :projects do
    resources :tasks do
      member do
        patch :toggle
      end
    end
  end
end
