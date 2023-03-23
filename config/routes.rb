Rails.application.routes.draw do
  #get("/", { :controller => "movies", :action => "index" })
  root "movies#index" 
  

  # Routes for the Movie resource:

  # CREATE
  post "/movies" => "movies#create", as: :movies # gives us the methods: movies_url movies_path 
  get "/movies/new" => "movies#new", as: :new_movie #gives us new_movie_url 
          
  # READ
  get "/movies" => "movies#index" 
  get "/movies/:id" => "movies#show", as: :movie #movie_path(argument) 


  # UPDATE
  patch "/movies/:id" => "movies#update"
  get "movies/:id/edit" => "movies#edit", as: :edit_movie #expects an argument edit_movie_path(argument) 

  
  # DELETE
  delete "/movies/:id" => "movies#destroy"
  #------------------------------
end
