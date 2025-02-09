Cors::Ui::Engine.routes.draw do
  root to: "pages#index"          # Index page (CORS intro)
  get "/dashboard", to: "dashboard#index"  # Dashboard page
  get "/about", to: "pages#about"
end
