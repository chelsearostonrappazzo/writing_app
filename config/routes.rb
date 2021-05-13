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
    get "stories" => "stories#show"
    post "stories" =>
    "stories#create"
    patch "stories" => "stories#update"
    delete "stories" => 
    "stories#delete"

    get "chapters" => "chapters#index"
    get "chapters" => "chapters#show"
    post "chapters" =>
    "chapters#create"
    patch "chapters" => "chapters#update"
    delete "chapters" => 
    "chapters#delete"

    get "characters" => "characters#index"
    get "characters" => "characters#show"
    post "characters" =>
    "characters#create"
    patch "characters" => "characters#update"
    delete "characters" => 
    "characters#delete"

    get "teams" => "teams#index"
    get "teams" => "teams#show"
    post "teams" =>
    "teams#create"
    patch "teams" => "teams#update"
    delete "teams" => 
    "teams#delete"

    get "members" => "members#index"
    get "members" => "members#show"
    post "members" =>
    "members#create"
    patch "members" => "members#update"
    delete "members" => 
    "members#delete"
  end
end
