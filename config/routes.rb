Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get '/info', to: 'price#show'
    end
  end
end
