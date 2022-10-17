Rails.application.routes.draw do
  root to: "dashboard/people#index"

  namespace :dashboard do
    resources :people, only: %i[index show new create update destroy] do
      post :edit, on: :member
    end

    resources :companies, only: %i[index new create update] do
      post :edit, on: :member
    end
  end
end
