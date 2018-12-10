Rails.application.routes.draw do
  

  devise_for :users
  root 'storefront#all_items'

  get 'categorical' => 'storefront#items_by_category' 
  get 'branding' => 'storefront#items_by_brand'
  get 'storefront/all_items'
  get 'storefront/items_by_category'
  get 'storefront/items_by_brand'
  

  resources :products

end
