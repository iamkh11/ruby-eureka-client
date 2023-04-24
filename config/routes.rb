Rails.application.routes.draw do

  namespace :api do
    namespace :teams do
      get 'teams/index'
      resources :teams, only: []
      get '/all/', to: 'teams#getAllTeams', as: 'index'
      get '/show-one/:id', to: 'teams#getTeamById', as: 'show'
      post '/create', to: 'teams#createTeam', as: 'create'
      put '/update-one/:id', to: 'teams#updateTeam', as: 'update'
      delete '/destroy-one/:id', to: 'teams#destroyTeam', as: 'destroy'
    end
  end

  Rails.application.routes.draw do
    get '/health_check', to: 'health_checks#health_check'
    get '/info', to: 'health_checks#info'
  end
  

end


