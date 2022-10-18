Rails.application.routes.draw do
  devise_for :employees, controllers: {
    registrations: 'employees/registrations',
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/home', to: "home#index"
  # Defines the root path route ("/")
  root "landing#index"
end
