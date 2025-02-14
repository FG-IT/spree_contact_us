Spree::Core::Engine.add_routes do
  resources :contacts, controller: 'contact_us/contacts', only: %i[new create]
  get 'contact-us' => 'contact_us/contacts#new', as: :contact_us
  post 'contact-us' => 'contact_us/contacts#create'

  namespace :admin do
    resource :recaptcha_settings do
      collection do
        post :clear_cache
      end
    end
  end
end
