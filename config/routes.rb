Rails.application.routes.draw do
  resources :challengers
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/welcome' => 'main#welcome'
  get '/challenge_list' => 'main#challenge_list'
  
  root to: 'main#welcome'
end
