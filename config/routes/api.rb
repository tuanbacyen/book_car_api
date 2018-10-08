require "api_constraints"
scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
  resources :cars, only: %i(index create update)
  resources :bookings, only: %i(index create destroy)
  post "bookcancel", :to => "cars#bookcancel"
  post "booking", :to => "bookings#booking"
end
