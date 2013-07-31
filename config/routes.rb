TakamoriaikoApi::Application.routes.draw do
  root :to => "idols#index"

  scope "api" do
    resources :idols, :only => [:index, :show], :defaults => {:format => :json}
  end
  resources :idols, :only => [:index, :show], :format => :html
end
