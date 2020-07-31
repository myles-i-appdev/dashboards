Rails.application.routes.draw do
  get("/", {controller: "application", action: "homepage"})
  get("/forex", {controller: "application", action: "forex"})
  get("/forex/:from_currency", {controller: "application", action: "from_currency"})
  get("/forex/:from_currency/:to_currency", {controller: "application", action: "to_currency"})
  get("/covid", {controller: "application", action: "covid"})
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
