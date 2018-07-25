Rails.application.routes.draw do
  resources :data_bases
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


root to: 'data_base#index'
end