require "api_constraints"
scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
  # resources :
end
