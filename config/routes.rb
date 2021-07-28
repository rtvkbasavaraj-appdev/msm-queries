Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" }) 

  get("/directors", { :controller => "director", :action => "index" })

  get("/directors/eldest", {:controller => "director", :action => "wisest"})

  get("/directors/youngest", {:controller => "director", :action => "youngest"})

  get("/directors/:an_id", {:controller => "director", :action => "director_details"})

  get("/movies", {:controller => "movies", :action => "index"})

  get("/movies/:an_id", {:controller => "movies", :action => "movie_details"})

  get("/actors", {:controller => "actors", :action => "index"})

  get("/actors/:an_id", {:controller => "actors", :action => "actor_details"})
end 
