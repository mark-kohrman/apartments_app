Rails.application.routes.draw do
  namespace :api do
    get "/apartments" => "apartments#index"
    get "/apartments/:id" => "apartments#show"
  end
end
