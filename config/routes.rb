Rails.application.routes.draw do
  get 'welcome/index'

  resources :posts
  get 'about' => 'welcome#about'

  root 'welcome#index'
end
