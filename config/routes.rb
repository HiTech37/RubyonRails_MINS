Rails.application.routes.draw do
  root 'guide#main'
  
  post '/ntu/course/index', to: 'ntu_course#index'
  get '/ntu/course', to: 'ntu_course#show'
  post '/ntu/enrollment', to: 'ntu_enrollment#renew'
  put '/ntu/enrollment', to: 'ntu_enrollment#renew'
  post '/nthu/course/index', to: 'nthu_course#index'
  get '/nthu/course', to: 'nthu_course#show'
  post '/nthu/enrollment', to: 'nthu_enrollment#renew'
  put '/nthu/enrollment', to: 'nthu_enrollment#renew'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
