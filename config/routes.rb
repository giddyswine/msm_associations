Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
 
  root "blockchains#index"

  # Routes for the Map resource:
  # CREATE
  get "/maps/new", :controller => "maps", :action => "new"
  post "/create_map", :controller => "maps", :action => "create"

  # READ
  get "/maps", :controller => "maps", :action => "index"
  get "/maps/:id", :controller => "maps", :action => "show"

  # UPDATE
  get "/maps/:id/edit", :controller => "maps", :action => "edit"
  post "/update_map/:id", :controller => "maps", :action => "update"

  # DELETE
  get "/delete_map/:id", :controller => "maps", :action => "destroy"
  #------------------------------
  
  
  # Routes for the Shiptolocation resource:
  # CREATE
  get "/shiptolocations/new", :controller => "shiptolocations", :action => "new"
  post "/create_shiptolocation", :controller => "shiptolocations", :action => "create"

  # READ
  get "/shiptolocations", :controller => "shiptolocations", :action => "index"
  get "/shiptolocations/:id", :controller => "shiptolocations", :action => "show"

  # UPDATE
  get "/shiptolocations/:id/edit", :controller => "shiptolocations", :action => "edit"
  post "/update_shiptolocation/:id", :controller => "shiptolocations", :action => "update"

  # DELETE
  get "/delete_shiptolocation/:id", :controller => "shiptolocations", :action => "destroy"
  #------------------------------
  
  # Routes for the State resource:
  # CREATE
  get "/states/new", :controller => "states", :action => "new"
  post "/create_state", :controller => "states", :action => "create"

  # READ
  get "/states", :controller => "states", :action => "index"
  get "/states/:id", :controller => "states", :action => "show"

  # UPDATE
  get "/states/:id/edit", :controller => "states", :action => "edit"
  post "/update_state/:id", :controller => "states", :action => "update"

  # DELETE
  get "/delete_state/:id", :controller => "states", :action => "destroy"
  #------------------------------

  # Routes for the Locationdetail resource:
  # CREATE
  get "/locationdetails/new", :controller => "locationdetails", :action => "new"
  post "/create_locationdetail", :controller => "locationdetails", :action => "create"

  # READ
  get "/locationdetails", :controller => "locationdetails", :action => "index"
  get "/locationdetails/:id", :controller => "locationdetails", :action => "show"

  # UPDATE
  get "/locationdetails/:id/edit", :controller => "locationdetails", :action => "edit"
  post "/update_locationdetail/:id", :controller => "locationdetails", :action => "update"

  # DELETE
  get "/delete_locationdetail/:id", :controller => "locationdetails", :action => "destroy"
  #------------------------------

  # Routes for the Location resource:
  # CREATE
  get "/locations/new", :controller => "locations", :action => "new"
  post "/create_location", :controller => "locations", :action => "create"

  # READ
  get "/locations", :controller => "locations", :action => "index"
  get "/locations/:id", :controller => "locations", :action => "show"

  # UPDATE
  get "/locations/:id/edit", :controller => "locations", :action => "edit"
  post "/update_location/:id", :controller => "locations", :action => "update"

  # DELETE
  get "/delete_location/:id", :controller => "locations", :action => "destroy"
  #------------------------------

  # Routes for the Mode resource:
  # CREATE
  get "/modes/new", :controller => "modes", :action => "new"
  post "/create_mode", :controller => "modes", :action => "create"

  # READ
  get "/modes", :controller => "modes", :action => "index"
  get "/modes/:id", :controller => "modes", :action => "show"

  # UPDATE
  get "/modes/:id/edit", :controller => "modes", :action => "edit"
  post "/update_mode/:id", :controller => "modes", :action => "update"

  # DELETE
  get "/delete_mode/:id", :controller => "modes", :action => "destroy"
  #------------------------------

  # Routes for the Customer resource:
  # CREATE
  get "/customers/new", :controller => "customers", :action => "new"
  post "/create_customer", :controller => "customers", :action => "create"

  # READ
  get "/customers", :controller => "customers", :action => "index"
  get "/customers/:id", :controller => "customers", :action => "show"

  # UPDATE
  get "/customers/:id/edit", :controller => "customers", :action => "edit"
  post "/update_customer/:id", :controller => "customers", :action => "update"

  # DELETE
  get "/delete_customer/:id", :controller => "customers", :action => "destroy"
  #------------------------------

  # Routes for the Salesperson resource:
  # CREATE
  get "/salespeople/new", :controller => "salespeople", :action => "new"
  post "/create_salesperson", :controller => "salespeople", :action => "create"

  # READ
  get "/salespeople", :controller => "salespeople", :action => "index"
  get "/salespeople/:id", :controller => "salespeople", :action => "show"

  # UPDATE
  get "/salespeople/:id/edit", :controller => "salespeople", :action => "edit"
  post "/update_salesperson/:id", :controller => "salespeople", :action => "update"

  # DELETE
  get "/delete_salesperson/:id", :controller => "salespeople", :action => "destroy"
  #------------------------------

  # Routes for the Blockchain resource:
  # CREATE
  get "/blockchains/new", :controller => "blockchains", :action => "new"
  post "/create_blockchain", :controller => "blockchains", :action => "create"

  # READ
  get "/blockchains", :controller => "blockchains", :action => "index"
  get "/blockchains/:id", :controller => "blockchains", :action => "show"

  # UPDATE
  get "/blockchains/:id/edit", :controller => "blockchains", :action => "edit"
  post "/update_blockchain/:id", :controller => "blockchains", :action => "update"

  # DELETE
  get "/delete_blockchain/:id", :controller => "blockchains", :action => "destroy"
  #------------------------------

  get "/", :controller => "blockchains", :action => "index"
  

  
  # Routes for the Companylocation resource:
  # CREATE
  get "/companylocations/new", :controller => "companylocations", :action => "new"
  post "/create_companylocation", :controller => "companylocations", :action => "create"

  # READ
  get "/companylocations", :controller => "companylocations", :action => "index"
  get "/companylocations/:id", :controller => "companylocations", :action => "show"

  # UPDATE
  get "/companylocations/:id/edit", :controller => "companylocations", :action => "edit"
  post "/update_companylocation/:id", :controller => "companylocations", :action => "update"

  # DELETE
  get "/delete_companylocation/:id", :controller => "companylocations", :action => "destroy"
  #------------------------------

  # Routes for the Product resource:
  # CREATE
  get "/products/new", :controller => "products", :action => "new"
  post "/create_product", :controller => "products", :action => "create"

  # READ
  get "/products", :controller => "products", :action => "index"
  get "/products/:id", :controller => "products", :action => "show"

  # UPDATE
  get "/products/:id/edit", :controller => "products", :action => "edit"
  post "/update_product/:id", :controller => "products", :action => "update"

  # DELETE
  get "/delete_product/:id", :controller => "products", :action => "destroy"
  #------------------------------

  # Routes for the Company resource:
  # CREATE
  get "/companies/new", :controller => "companies", :action => "new"
  post "/create_company", :controller => "companies", :action => "create"

  # READ
  get "/companies", :controller => "companies", :action => "index"
  get "/companies/:id", :controller => "companies", :action => "show"

  # UPDATE
  get "/companies/:id/edit", :controller => "companies", :action => "edit"
  post "/update_company/:id", :controller => "companies", :action => "update"

  # DELETE
  get "/delete_company/:id", :controller => "companies", :action => "destroy"
  #------------------------------

  # Routes for the Character resource:
  # CREATE
  get "/characters/new", :controller => "characters", :action => "new"
  post "/create_character", :controller => "characters", :action => "create"

  # READ
  get "/characters", :controller => "characters", :action => "index"
  get "/characters/:id", :controller => "characters", :action => "show"

  # UPDATE
  get "/characters/:id/edit", :controller => "characters", :action => "edit"
  post "/update_character/:id", :controller => "characters", :action => "update"

  # DELETE
  get "/delete_character/:id", :controller => "characters", :action => "destroy"
  #------------------------------

  # Routes for the Actor resource:
  # CREATE
  get "/actors/new", :controller => "actors", :action => "new"
  post "/create_actor", :controller => "actors", :action => "create"

  # READ
  get "/actors", :controller => "actors", :action => "index"
  get "/actors/:id", :controller => "actors", :action => "show"

  # UPDATE
  get "/actors/:id/edit", :controller => "actors", :action => "edit"
  post "/update_actor/:id", :controller => "actors", :action => "update"

  # DELETE
  get "/delete_actor/:id", :controller => "actors", :action => "destroy"
  #------------------------------

  # Routes for the Movie resource:
  # CREATE
  get "/movies/new", :controller => "movies", :action => "new"
  post "/create_movie", :controller => "movies", :action => "create"

  # READ
  get "/movies", :controller => "movies", :action => "index"
  get "/movies/:id", :controller => "movies", :action => "show"

  # UPDATE
  get "/movies/:id/edit", :controller => "movies", :action => "edit"
  post "/update_movie/:id", :controller => "movies", :action => "update"

  # DELETE
  get "/delete_movie/:id", :controller => "movies", :action => "destroy"
  #------------------------------

  # Routes for the Director resource:
  # CREATE
  get "/directors/new", :controller => "directors", :action => "new"
  post "/create_director", :controller => "directors", :action => "create"

  # READ
  get "/directors", :controller => "directors", :action => "index"
  get "/directors/:id", :controller => "directors", :action => "show"

  # UPDATE
  get "/directors/:id/edit", :controller => "directors", :action => "edit"
  post "/update_director/:id", :controller => "directors", :action => "update"

  # DELETE
  get "/delete_director/:id", :controller => "directors", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount WebGit::Engine, at: "/rails/git"
end
