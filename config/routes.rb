Rails.application.routes.draw do
  
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users
  # Start: Version V1 Routes 
  namespace :api, defaults: { format: :json } do 
    namespace :v1 do 
      resources :universities, only: [:index]
      resources :users , only: [:index, :create] 
      resources :sessions, only: [:create] 
      resources :courses, only: [:index] do 
          collection do 
            get :ntu
            get :nthu 
          end
      end
      resources :enrollments, only: [:index] do 
          collection do 
            get :ntu
            get :nthu 
          end
      end

    end
  end  
  # End: Version V1 Routes 
  
  post '/ntu/course/index', to: 'ntu_course#index'
  get '/ntu/course', to: 'ntu_course#show'
  post '/ntu/enrollment', to: 'ntu_enrollment#renew'
  put '/ntu/enrollment', to: 'ntu_enrollment#renew'
  post '/nthu/course/index', to: 'nthu_course#index'

  get '/nthu/course', to: 'nthu_course#show'
  post '/nthu/enrollment', to: 'nthu_enrollment#renew'
  put '/nthu/enrollment', to: 'nthu_enrollment#renew'

  root 'guide#main'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
