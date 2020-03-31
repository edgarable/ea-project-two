Rails.application.routes.draw do
  resources :courses
  resources :students do
    member do
      get "assign_course" => "students#assign_course"
    end
  end
  root 'students#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
