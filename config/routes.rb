Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" }) 

  get("/directors", { :controller => "director", :action => "index" })

  get("/directors/eldest", {:controller => "director", :action => "wisest"})

  get("/directors/youngest", {:controller => "director", :action => "youngest"})

  get("/directors/:an_id", {:controller => "director", :action => "director_details"})
end 
