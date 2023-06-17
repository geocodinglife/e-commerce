Rails.application.routes.draw do
  resources :daily_workouts, only: %i[new create]

  root 'welcome#index'
end
