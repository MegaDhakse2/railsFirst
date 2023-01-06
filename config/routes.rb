Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   #Get /about
   root to: "main#index"
   get "sign_up", to: "registrations#new"
   post "sign_up", to: "registrations#create"
   get "/secondPage", to: "main#question"
   get "/secondPage1", to: "main#questionType1"
   get "/secondPage2", to: "main#questionType2"

  # Defines the root path route ("/")
  # root "articles#index"
end
