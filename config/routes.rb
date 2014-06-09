Rails.application.routes.draw do
  namespace :api do
    resources :todo_lists, only: [:index] do
      resources :todo_items, only: [:index]
    end
  end
end
