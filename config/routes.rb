Rails.application.routes.draw do
  namespace :api do
    resources :students, :companies, :coop_positions
  end

  mount_ember_app :frontend, to: "/"
end
