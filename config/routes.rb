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
  end
end
