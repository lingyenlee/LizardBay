Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "/", to: "pages#home", as: "root"
  
  resources :listings do
    member do
      get "delete" # delete_listing /listing/:id/delete
    end
  end

  # GET /listings?sort=price => listing sorted by price

end
