Rails.application.routes.draw do
  get 'gardens/name'

  get 'gardens/description'

  get 'welcome/index'

  resources :posts
  get 'about' => 'welcome#about'

  root 'welcome#index'
end
