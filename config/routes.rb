Rails.application.routes.draw do
  get 'admin', to: 'admin#home'

  get 'admin/froms', to: 'admin_froms#index'
  get 'admin/froms/new', to: 'admin_froms#new'
  get 'admin/froms/:id', to: 'admin_froms#show'
  get 'admin/froms/:id/edit', to: 'admin_froms#edit'

  get 'admin/tournaments', to: 'admin_tournaments#index'
  get 'admin/tournaments/new', to: 'admin_tournaments#new'
  get 'admin/tournaments/:id', to: 'admin_tournaments#show'
  get 'admin/tournaments/:id/edit', to: 'admin_tournaments#edit'

  get 'admin/movies', to: 'admin_movies#index'
  get 'admin/movies/new', to: 'admin_movies#new'
  get 'admin/movies/:id', to: 'admin_movies#show'
  get 'admin/movies/:id/edit', to: 'admin_movies#edit'

  get 'admin/players', to: 'admin_players#index'
  get 'admin/players/new', to: 'admin_players#new'
  get 'admin/players/:id', to: 'admin_players#show'
  get 'admin/players/:id/edit', to: 'admin_players#edit'

  get 'movies/', to: 'match_movies#index'
  get 'movies/search', to: 'match_movies#search'
  post 'movies/search', to: 'match_movies#search'
  get 'movies/:id', to: 'match_movies#show'

  root 'match_movies#index'
end
