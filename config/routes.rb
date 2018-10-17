Rails.application.routes.draw do
  
  namespace :admin do
    root 'dashboard#index'
    get 'landing', to: 'dashboard#landing'
    post 'login' => 'dashboard#create'
    resources :products
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'login' => 'sessions#index'
  post 'login_user' => 'sessions#create'
  delete 'logout_user' => 'sessions#destroy'
  post 'register_user' => 'registrations#create'
  resources :cart_items
end
