Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get('/directors', {:controller => "misc", :action => "directors_page"})
  get("/directors/youngest", {:controller => "misc", :action => "youngest_page"})
  get("/directors/eldest", {:controller => "misc", :action => "eldest_page"})
  get("/directors/:director_id",{:controller => "misc", :action => "director_page"})
  get("/movies", { :controller => "misc", :action => "movies_page" })
  get("/movies/:movie_id", { :controller => "misc", :action => "movie_page" })
  get("/actors", { :controller => "misc", :action => "actors_page" })
  get("/actors/:actor_id", { :controller => "misc", :action => "actor_page" })
end
