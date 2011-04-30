AudioGraphOnRails::Application.routes.draw do
  resources :basics

  # The priority is based upon order of creation:
  # first created -> highest priority.

#  map.button                "button",           :controller => 'basics', :action => 'button'
#  map.dac_start_button      "dac_start",        :controller => 'basics', :action => 'dac_start'
#  map.dac_stop_button       "dac_stop",         :controller => 'basics', :action => 'dac_stop'
#  
#  map.slider_value          "slider_value",     :controller => 'basics', :action => 'slider_value'

  resources :basics do
#    resource :button
#    resource :dac_start
#    resource :dac_stop
#    resource :slider_value
    
#    resource :oscil_frequency

    #  :to => "basics#ui"
        member do
          post 'button'
          post 'dac_start'
          post 'dac_stop'
          post 'slider_value'
          post 'oscil_frequency'
          post 'oscil_amplitude'
        end
 
  end


  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "basics#ui"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
