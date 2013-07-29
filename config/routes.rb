TakamoriaikoApi::Application.routes.draw do
  root :to => "idols#index"
  resources :idols, :only => [:index, :show]
end
