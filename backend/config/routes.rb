Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql' if Rails.env.development?

  post '/graphql', to: 'graphql#execute'

  root to: 'home#index'
  get 'home/check', to: 'home#check'

  resources :lans
  resources :tickets
  resources :ticket_options

  devise_for :users
end
