Rails.application.routes.draw do
  resources :url_maps ,  except: [:edit,:destroy, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/:id', to: 'url_maps#redirect'
  root 'url_maps#index'
end
