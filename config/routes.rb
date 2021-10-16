Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/photos", controller: "photos", action: "index"

  get "/photos/:id", controller: "photos", action: "show"

  post "/photos", controller: "photos", action: "create"

  patch "/photos/:id", controller: "photos", action: "update"
end
