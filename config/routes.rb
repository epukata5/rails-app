Rails.application.routes.draw do

  scope '/api/v1' do
    resources :recruitments, only: [:index, :create]
    get 'run_migration', to: 'recruitments#run_migration'
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
