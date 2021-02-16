Rails.application.routes.draw do

  resources :coupons, only: :index
  
  get "/coupons/new", to: "coupons#new", as: "new_coupon"
  post "/coupons", to: "coupons#create"
  get "/coupons/:id", to: "coupons#show", as: "coupon"
end
