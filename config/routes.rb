Rails.application.routes.draw do
  root 'static#index'

  namespace :api,defaults: { format: 'json'} do
    namespace :v1, defaults: { format: 'json'} do 
        get 'helloworld', to: 'helloworld#index'
    end
  end

  get '*path', to: 'static#index', constraints: ->(req) do
     req.xhr? || req.format.html?
   end
end
