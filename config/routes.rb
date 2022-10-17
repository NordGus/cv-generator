Rails.application.routes.draw do
  root to: "dashboard/people#index"

  namespace :dashboard do
    resources :people, only: %i[index show update new create destroy] do
      post :edit, on: :member
    end
  end
end
