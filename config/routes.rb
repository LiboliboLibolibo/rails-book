Rails.application.routes.draw do

  get 'welcome/index'

  get 'sessions/new'

  post 'sessions/create'

  get 'applicants/new'

  post 'applicants/create'

  post 'articles/new'

  resources :articles do 
    resources :comments
  end

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
