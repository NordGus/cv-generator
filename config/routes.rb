Rails.application.routes.draw do
  root to: "dashboard/people#index"

  namespace :dashboard do
    resources :people, only: %i[index show new create update destroy] do
      post :edit, on: :member

      namespace :data do
        resources :contacts, only: %i[index new create update destroy] do
          post :edit, on: :member
        end

        resources :resumes, only: %i[index new create update destroy] do
          post :show, on: :member
          post :edit, on: :member

          resources :biographies, only: %i[show create update] do
            post :edit, on: :member
          end

          resources :languages, only: %i[index new create update destroy] do
            post :edit, on: :member
          end

          resources :education, only: %i[index new create update destroy] do
            post :edit, on: :member
          end

          resources :experience, only: %i[index new create update destroy] do
            post :edit, on: :member

            resources :tech_experience, only: %i[index new create update destroy] do
              post :edit, on: :member
            end
          end
        end
      end
    end

    resources :companies, only: %i[index new create update] do
      post :edit, on: :member
    end

    resources :technologies, only: %i[index new create update] do
      post :edit, on: :member
    end
  end
end
