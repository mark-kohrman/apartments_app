Rails.application.routes.draw do
  namespace :api do
    get "/apartments" => "apartments#index"
  end
end
