Rails.application.routes.draw do
  namespace :api do
    resources :mycoop
  end

  mount_ember_app :frontend, to: "/"
end
