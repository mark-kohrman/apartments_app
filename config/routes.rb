Rails.application.routes.draw do
  namespace :api do
    get "/apartments" => "apartments#index"
    get "/apartments/:id" => "apartments#show"
    post "/apartments" => "apartments#create"
    patch "/apartments/:id" => "apartments#update"
  end
end
