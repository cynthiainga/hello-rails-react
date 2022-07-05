Rails.application.routes.draw do
  root 'static#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1, defaults: { format: :json } do
      get :hello_world, to: 'helloworld#index'
    end
  end

  get '*path', to: 'static#index', constraints: ->(request) do
    !request.xhr? || request.format.html?
  end
end
