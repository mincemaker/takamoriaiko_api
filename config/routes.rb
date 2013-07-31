TakamoriaikoApi::Application.routes.draw do
  root :to => "idols#index"
  resources :idols, :only => [:index, :show], :format => :html

  scope "api" do
    resources :idols, :only => [:index, :show], :defaults => {:format => :json}, :as => :aiko_api
  end
end
