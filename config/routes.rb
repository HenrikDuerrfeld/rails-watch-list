Rails.application.routes.draw do
    resources :lists, only: [:new, :create, :index, :show] do
        resources :bookmarks, only: [:new, :create, :destroy]
      end
end
