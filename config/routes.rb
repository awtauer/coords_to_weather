CoordsToWeather::Application.routes.draw do
  get("/weather", { :controller => "coords", :action => "fetch_weather" })

  get("/weather/:latitude", { :controller => "coords", :action => "fetch_weather" })

get("/weather/:longitude", { :controller => "coords", :action => "fetch_weather" })

end
