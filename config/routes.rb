Rails.application.routes.draw do
  get 'static_pages/index'
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"

  root to: "static_pages#index"

  resources :cohorts
  resources :courses
  resources :students
  resources :instructors

  post '/cohorts/:id/instructors/add' => 'cohorts#add_instructor'
  post '/cohorts/:id/instructors/delete' => 'cohorts#remove_instructor'
  post '/cohorts/:id/students/add' => 'cohorts#add_student'
  post '/cohorts/:id/students/delete' => 'cohorts#remove_student'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
