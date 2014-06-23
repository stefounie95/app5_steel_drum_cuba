Rails.application.routes.draw do
  
  # crée des routes pour toutes les actions de galeries et photos (créées pour la partie admin)
  resources :galeries
  resources :photos
  
  # pour creer les routes vers les vues medias/photos, medias/videos, et medias/albums  (uniquement les vues, créées pour la partie publique)
  get 'media/photos' #ici on peut pas mettre un as photo puisqu'il y a aussi les routes pour "photos" de la partie admin
  get 'media/videos', as: :videos  # ainsi ce lien sera videos_path et non plu media_videos_path
  get 'media/albums', as: :albums 
  #get 'whoweare' //ATTENTION, CREE UNE ERREUR
  
  
  get 'welcome/index'
  get 'welcome/whoweare', as: :whoweare  #definit dans le controleur welcom
  
  resources :concerts
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index' #avoir fait la vue/controleur welcom avec "rails g controller welcome index"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
