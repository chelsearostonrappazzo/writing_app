Rails.application.routes.draw do
  namespace :api do
    get 'stories/api/characters'
    get 'stories/api/chapters'
    get 'stories/api/members'
    get 'stories/api/teams'
  end
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"
    get "/users/:id" => "users#show"

    post "/sessions" => "sessions#create"

    get "stories" => "stories#index"
    get "stories/:id" => "stories#show"
    post "stories" =>
    "stories#create"
    patch "stories/:id" => "stories#update"
    delete "stories/:id" => 
    "stories#destroy"

    get "stories/:id/chapters" => "chapters#index"
    get "chapters/:id" => "chapters#show"
    post "chapters" =>
    "chapters#create"
    patch "chapters/:id" => "chapters#update"
    delete "chapters/:id" => 
    "chapters#destroy"

    get "characters" => "characters#index"
    get "characters/:id" => "characters#show"
    post "characters" =>
    "characters#create"
    patch "characters/:id" => "characters#update"
    delete "characters/:id" => 
    "characters#destroy"

    get "teams" => "teams#index"
    get "teams/:id" => "teams#show"
    post "teams" =>
    "teams#create"
    patch "teams/:id" => "teams#update"
    delete "teams/:id" => 
    "teams#destroy"

    get "members" => "members#index"
    get "members/:id" => "members#show"
    post "members" =>
    "members#create"
    patch "members/:id" => "members#update"
    delete "members/:id" => 
    "members#destroy"
  end
end
