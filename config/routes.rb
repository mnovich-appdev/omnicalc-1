Rails.application.routes.draw do

  get("/square/new", {:controller => "application", :action => "blank_square_form"})

  get("square/results", {:contoller => "application", :action => ""})

end
