TakamoriaikoApi::Application.routes.draw do
  root :to => "idols#index"

  constraints :subdomain => 'api', :format => :json do
    resources :idols, :only => [:index, :show], :defaults => {:format => :json}
  end
  resources :idols, :only => [:index, :show], :format => :html
end
