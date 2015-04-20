Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  resources :projects

  resources :contacts do
    get '/contacts' => 'contacts#new'
    post 'contacts' => 'contacts#create'
  end
end
