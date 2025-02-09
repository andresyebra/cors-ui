Rails.application.routes.draw do
  mount Cors::Ui::Engine => "/cors-ui"
end
