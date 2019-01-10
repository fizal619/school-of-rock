Rails.application.routes.draw do
  get 'instructors/index'
  get 'instructors/show'
  get 'instructors/edit'
  get 'students/index'
  get 'students/show'
  get 'students/edit'
  get 'courses/index'
  get 'courses/show'
  get 'courses/edit'
  get 'cohorts/index'
  get 'cohorts/show'
  get 'cohorts/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
