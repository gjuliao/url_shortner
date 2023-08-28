Rails.application.routes.draw do
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

root "links#index"

 resources :links, only: [:index, :create, :show]

 get '/:lookup_code' => 'links#show'

end
